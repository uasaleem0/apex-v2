---
name: apex-monitor
description: Real-time APEX system monitoring with silent background logging
---

# APEX Real-Time Monitor

**Usage**: `/apex-monitor start|stop|status`

**Purpose**: Continuously monitor APEX workflow execution, automatically detect issues, and log insights without disrupting your workflow.

## Features

### 🔍 **Automatic Detection**
- Command failures and performance issues
- Error patterns in output streams
- Agent performance anomalies  
- System health problems
- Workflow bottlenecks

### 📊 **Silent Monitoring**
- Minimal output: `Apex-Note-Logged: category`
- Background operation
- Token-efficient logging
- No workflow interruption

### 📈 **Real-Time Metrics**
```bash
# Automatically tracks:
- Command execution times
- Error rates by agent
- System dependency health
- Git repository status
- Disk space and performance
```

## Commands

```bash
/apex-monitor start     # Start background monitoring
/apex-monitor stop      # Stop and generate session summary
/apex-monitor status    # Check monitoring status
```

## Integration Options

### **Option 1: Manual Start/Stop**
```bash
/apex-monitor start
# ... do your APEX work ...
/apex-monitor stop
```

### **Option 2: Auto-Monitoring (Recommended)**
Add to your APEX startup:
```bash
# In apex-startup.sh or shell profile
source apex-implementation/utils/monitor-hooks.sh
```

This enables:
- Auto-start monitoring on APEX session begin
- Auto-stop and summary on session end
- Enhanced command monitoring for claude/git/npm/python

## What Gets Monitored

### **Performance Issues**
- Commands taking >30 seconds
- High error frequency (>3 errors in output)
- Agent failures or timeouts
- System dependency problems

### **Workflow Patterns**
- Agent success/failure rates
- Command usage frequency  
- Error pattern identification
- System health indicators

### **Auto-Generated Notes**
```
Apex-Note-Logged: ERROR         # Command failed
Apex-Note-Logged: PERFORMANCE   # Slow execution detected
Apex-Note-Logged: PATTERN       # Error pattern found
Apex-Note-Logged: WORKFLOW      # Workflow step failed
Apex-Note-Logged: SYSTEM        # System health issue
Apex-Note-Logged: SESSION       # Session summary
```

## Output Files

- **Daily Logs**: `docs/meta-analysis/apex-notes-YYYY-MM-DD.md`
- **Agent Metrics**: `docs/meta-analysis/agent-performance.json`
- **Session Summaries**: Automatic on stop/exit

## Token Efficiency

- **Silent Operation**: Only one-line confirmations
- **Background Processing**: No workflow interruption
- **Pattern Detection**: Automatic issue identification
- **Batch Logging**: Efficient file operations

## Example Session

```bash
$ /apex-monitor start
Apex-Monitor: Started

$ @ux-expert *create-visual-designs
🎨 Starting @ux-expert...
# ... normal workflow output ...
Apex-Note-Logged: WORKFLOW

$ python apex-implementation/utils/python-design-generator.py stage1
# ... normal output ...
# (slow execution detected)
Apex-Note-Logged: PERFORMANCE

$ /apex-monitor stop
Apex-Session-Logged: Summary
Apex-Monitor: Stopped
```

## Benefits

✅ **Proactive Issue Detection**: Catches problems you might miss
✅ **Performance Insights**: Identifies slow operations automatically  
✅ **Workflow Analytics**: Tracks agent effectiveness over time
✅ **Silent Operation**: Doesn't interfere with your work
✅ **Comprehensive Logging**: Builds rich meta-analysis dataset

---

**Start monitoring your APEX sessions with `/apex-monitor start` to automatically capture insights and issues in real-time!**