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
echo "Type 'm' for interactive menu or use commands directly:"
echo "Direct commands: @analyst @pm @architect claude build /status"
echo ""

# Optional: Auto-show menu on 'm' input
alias m='apex_menu'
alias menu='apex_menu'