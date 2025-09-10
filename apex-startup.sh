#!/bin/bash
# APEX System Startup Banner with Interactive Menu
# Run this when entering APEX directory: source apex-startup.sh

show_banner() {
    echo ""
    echo "════════════════════════════════════════════════════"
    echo "    █████╗ ██████╗ ███████╗██╗  ██╗"
    echo "   ██╔══██╗██╔══██╗██╔════╝╚██╗██╔╝"
    echo "   ███████║██████╔╝█████╗   ╚███╔╝ "
    echo "   ██╔══██║██╔═══╝ ██╔══╝   ██╔██╗ "
    echo "   ██║  ██║██║     ███████╗██╔╝ ██╗"
    echo "   ╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝"
    echo "════════════════════════════════════════════════════"
    echo "🚀 AUTONOMOUS PROJECT EXECUTION | v2.0"
    echo "⚡ Story-Driven Development System"
    echo "────────────────────────────────────────────────────"
}

show_menu() {
    echo "📋 APEX Command Menu:"
    echo ""
    echo "🤖 AGENTS:"
    echo "   1) @analyst      - Project analysis & requirements"
    echo "   2) @pm          - Product management & planning"
    echo "   3) @architect   - System architecture & design"
    echo "   4) @ux-expert   - UI/UX design & validation"
    echo "   5) @build-manager - Autonomous implementation"
    echo ""
    echo "⚡ QUICK ACTIONS:"
    echo "   6) /status      - Project dashboard"
    echo "   7) /bundles     - Story bundle management"
    echo "   8) claude build - Start autonomous build"
    echo "   9) claude validate - Strategic validation"
    echo ""
    echo "📚 HELP & INFO:"
    echo "   h) Help        - Full command reference"
    echo "   q) Quick start - Setup new project"
    echo "   x) Exit menu   - Return to terminal"
    echo ""
    echo "════════════════════════════════════════════════════"
}

apex_menu() {
    while true; do
        echo ""
        echo -n "APEX> Select option (1-9, h, q, x): "
        read choice
        case $choice in
            1) echo "🤖 Starting @analyst..."; echo "Type: @analyst [your question]";;
            2) echo "🤖 Starting @pm..."; echo "Type: @pm [your request]";;
            3) echo "🤖 Starting @architect..."; echo "Type: @architect [your design needs]";;
            4) echo "🤖 Starting @ux-expert..."; echo "Type: @ux-expert [your UI/UX needs]";;
            5) echo "🤖 Starting @build-manager..."; echo "Type: @build-manager [implementation request]";;
            6) echo "⚡ Showing project status..."; echo "Type: /status";;
            7) echo "⚡ Opening bundle management..."; echo "Type: /bundles";;
            8) echo "⚡ Starting autonomous build..."; echo "Type: claude build";;
            9) echo "⚡ Running strategic validation..."; echo "Type: claude validate";;
            h) echo "📚 Opening help..."; echo "Type: claude help";;
            q) echo "🚀 Quick project setup..."; echo "Type: claude setup-project";;
            x) echo "👋 Exiting menu. You're now in APEX terminal."; break;;
            *) echo "❌ Invalid option. Please choose 1-9, h, q, or x.";;
        esac
    done
}

# Main execution
show_banner

# Optional: Auto-start monitoring
if [ -f "apex-implementation/utils/monitor-hooks.sh" ]; then
    source apex-implementation/utils/monitor-hooks.sh
fi

echo "Type 'm' for interactive menu or use commands directly:"
echo "Direct commands: @analyst @pm @architect claude build /status"
echo ""

# Register all APEX agent commands
setup_agent_commands() {
    local apex_dir="$(pwd)"
    
    # Core agent commands using robust launcher
    alias @analyst="'$apex_dir/launch-agent.sh' apex-analyst"
    alias @pm="'$apex_dir/launch-agent.sh' apex-pm" 
    alias @architect="'$apex_dir/launch-agent.sh' apex-architect"
    alias @ux-expert="'$apex_dir/launch-agent.sh' apex-ux"
    alias @build-manager="'$apex_dir/launch-agent.sh' build-manager"
    
    # Alternative commands without @
    alias analyst="@analyst"
    alias pm="@pm"
    alias architect="@architect"
    alias ux-expert="@ux-expert"
    alias build-manager="@build-manager"
    
    # Status and utility commands (functions instead of aliases for special chars)
    apex_status() { cd "$apex_dir" && echo "📊 Project Status Dashboard" && echo "Project: $(basename "$PWD")" && ls -la docs/ 2>/dev/null || echo "No docs/ directory found"; }
    apex_bundles() { cd "$apex_dir" && echo "📦 Bundle Management" && ls -la docs/stories/ 2>/dev/null || echo "No stories/ directory found"; }
    
    # Create functions for slash commands
    alias status='apex_status'
    alias bundles='apex_bundles'
    
    # Export for global access
    export APEX_HOME="$apex_dir"
    export PATH="$APEX_HOME:$PATH"
}

# Check if we're in the right directory
if [[ "$(basename "$PWD")" == "Claude" ]] || [[ -f "apex-startup.sh" ]]; then
    setup_agent_commands
    echo "✅ APEX agent commands registered successfully"
    echo "✅ Available: @analyst, @pm, @architect, @ux-expert, @build-manager"
else
    echo "⚠️  Warning: Run this script from the APEX directory (/c/Users/User/Claude)"
fi

# Menu aliases
alias m='apex_menu'
alias menu='apex_menu'