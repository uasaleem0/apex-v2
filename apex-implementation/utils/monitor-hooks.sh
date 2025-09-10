#!/bin/bash
# APEX Monitoring Hooks - Integrate monitoring into workflow commands
# Source this file to add monitoring to APEX commands

MONITOR_SCRIPT="$(dirname "${BASH_SOURCE[0]}")/apex-monitor.js"

# Wrapper function for monitored command execution
apex_monitored_cmd() {
    local cmd="$1"
    local start_time=$(date +%s%3N)
    
    # Execute the actual command and capture exit code
    "$@"
    local exit_code=$?
    
    local end_time=$(date +%s%3N)
    
    # Send metrics to monitor (if running) - Windows compatible
    if ps aux 2>/dev/null | grep -q "apex-monitor.js" || tasklist 2>/dev/null | grep -q "node.exe"; then
        if [[ -f "$MONITOR_SCRIPT" ]]; then
            node "$MONITOR_SCRIPT" log-command "$cmd" "$start_time" "$end_time" "$exit_code" 2>/dev/null || true
        fi
    fi
    
    return $exit_code
}

# Enhanced agent commands with monitoring
apex_agent() {
    local agent="$1"
    shift
    
    echo "🤖 Starting $agent..."
    apex_monitored_cmd "$agent" "$@"
    local result=$?
    
    # Log workflow step
    if ps aux 2>/dev/null | grep -q "apex-monitor.js" > /dev/null; then
        node "$MONITOR_SCRIPT" log-workflow "agent-execution" "$agent" $([ $result -eq 0 ] && echo "true" || echo "false") 2>/dev/null
    fi
    
    return $result
}

# Enhanced command execution with output scanning
apex_cmd_with_scan() {
    local cmd="$1"
    shift
    
    # Run command and capture output
    local output
    output=$("$cmd" "$@" 2>&1)
    local exit_code=$?
    
    # Display output
    echo "$output"
    
    # Scan output for patterns (if monitor running)
    if ps aux 2>/dev/null | grep -q "apex-monitor.js" > /dev/null; then
        echo "$output" | node "$MONITOR_SCRIPT" scan-output 2>/dev/null
    fi
    
    return $exit_code
}

# Auto-start monitoring when sourcing this file
apex_start_monitoring() {
    if ! ps aux 2>/dev/null | grep -q "apex-monitor.js" > /dev/null; then
        nohup node "$MONITOR_SCRIPT" start > /dev/null 2>&1 &
        sleep 1  # Give it time to start
    fi
}

# Auto-stop monitoring on shell exit
apex_stop_monitoring() {
    if ps aux 2>/dev/null | grep -q "apex-monitor.js" > /dev/null; then
        node "$MONITOR_SCRIPT" stop 2>/dev/null
    fi
}

# Hook into shell exit
trap apex_stop_monitoring EXIT

# Enhanced aliases for common APEX commands (optional)
alias claude='apex_cmd_with_scan claude'
alias npm='apex_monitored_cmd npm'
alias python='apex_monitored_cmd python'
alias git='apex_monitored_cmd git'

# Start monitoring automatically
apex_start_monitoring

echo "APEX monitoring hooks loaded. Monitor: $(ps aux 2>/dev/null | grep -q 'apex-monitor.js' && echo 'Active' || echo 'Inactive')"