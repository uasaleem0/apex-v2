#!/bin/bash

# Claude Code Foundation Installer
# Installs your personal Claude Code setup on a new PC

set -e  # Exit on any error

echo "🚀 Claude Code Foundation Installer"
echo "===================================="

# Configuration
CLAUDE_DIR="$HOME/Claude"
BACKUP_DIR="$HOME/Claude-backup-$(date +%Y%m%d-%H%M%S)"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Helper functions
log_info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

log_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

log_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

log_error() {
    echo -e "${RED}❌ $1${NC}"
}

# Check if Claude Code is installed
check_claude_code() {
    log_info "Checking if Claude Code is installed..."
    
    if command -v claude >/dev/null 2>&1; then
        log_success "Claude Code is installed"
        claude --version
    else
        log_error "Claude Code is not installed!"
        log_info "Please install Claude Code first from: https://claude.ai/code"
        exit 1
    fi
}

# Backup existing Claude setup if it exists
backup_existing() {
    if [ -d "$CLAUDE_DIR" ]; then
        log_warning "Existing Claude setup found"
        log_info "Creating backup at: $BACKUP_DIR"
        cp -r "$CLAUDE_DIR" "$BACKUP_DIR"
        log_success "Backup created"
    fi
}

# Install foundation files
install_foundation() {
    log_info "Installing Claude Code foundation..."
    
    # Create target directory
    mkdir -p "$HOME"
    
    # Copy foundation files (excluding .git)
    if [ -d "$CLAUDE_DIR" ]; then
        rm -rf "$CLAUDE_DIR"
    fi
    
    # Copy current directory (foundation repo) to target
    cp -r "$(pwd)" "$CLAUDE_DIR"
    
    # Remove .git from the copy (we want this to be the installed version)
    rm -rf "$CLAUDE_DIR/.git"
    
    log_success "Foundation files installed to: $CLAUDE_DIR"
}

# Set up environment templates
setup_environment() {
    log_info "Setting up environment configuration..."
    
    # Create environment template
    cat > "$CLAUDE_DIR/.env.template" << 'EOF'
# Claude Code Foundation - Environment Variables
# Copy this file to .env and fill in your actual values

# GitHub Integration
GITHUB_TOKEN=your_github_personal_access_token_here

# Other API Keys (add as needed)
# OPENAI_API_KEY=your_openai_key_here
# ANTHROPIC_API_KEY=your_anthropic_key_here

# Instructions:
# 1. Copy this file: cp .env.template .env
# 2. Fill in your actual tokens in .env
# 3. Never commit .env to git (it's in .gitignore)
EOF

    # Create .env if it doesn't exist
    if [ ! -f "$CLAUDE_DIR/.env" ]; then
        cp "$CLAUDE_DIR/.env.template" "$CLAUDE_DIR/.env"
        log_warning "Created .env template - you need to add your actual tokens!"
    fi
    
    log_success "Environment templates created"
}

# Install MCP servers
install_mcp_servers() {
    log_info "Installing MCP servers..."
    
    # Check if npm is available
    if ! command -v npm >/dev/null 2>&1; then
        log_warning "npm not found - skipping MCP server installation"
        log_info "Please install Node.js to use MCP servers"
        return
    fi
    
    # Install common MCP servers globally
    log_info "Installing GitHub MCP server..."
    npm install -g @modelcontextprotocol/server-github || log_warning "GitHub MCP server installation failed"
    
    log_info "Installing SQLite MCP server..."
    npm install -g @modelcontextprotocol/server-sqlite || log_warning "SQLite MCP server installation failed"
    
    log_info "Installing File System MCP server..."
    npm install -g @modelcontextprotocol/server-filesystem || log_warning "File System MCP server installation failed"
    
    log_success "MCP servers installation attempted"
}

# Make scripts executable
setup_permissions() {
    log_info "Setting up script permissions..."
    
    chmod +x "$CLAUDE_DIR/scripts/"*.sh 2>/dev/null || true
    chmod +x "$CLAUDE_DIR/"*.sh 2>/dev/null || true
    
    log_success "Script permissions configured"
}

# Verify installation
verify_installation() {
    log_info "Verifying installation..."
    
    # Check if key files exist
    local errors=0
    
    if [ ! -f "$CLAUDE_DIR/settings.json" ]; then
        log_error "settings.json not found"
        ((errors++))
    fi
    
    if [ ! -f "$CLAUDE_DIR/CLAUDE.md" ]; then
        log_error "CLAUDE.md not found"
        ((errors++))
    fi
    
    if [ ! -d "$CLAUDE_DIR/agents" ]; then
        log_error "agents directory not found"
        ((errors++))
    fi
    
    if [ ! -d "$CLAUDE_DIR/scripts" ]; then
        log_error "scripts directory not found"
        ((errors++))
    fi
    
    if [ $errors -eq 0 ]; then
        log_success "Installation verification passed"
        return 0
    else
        log_error "Installation verification failed with $errors errors"
        return 1
    fi
}

# Main installation process
main() {
    echo
    log_info "Starting Claude Code Foundation installation..."
    echo
    
    # Run installation steps
    check_claude_code
    backup_existing
    install_foundation
    setup_environment
    install_mcp_servers
    setup_permissions
    
    echo
    if verify_installation; then
        log_success "🎉 Claude Code Foundation installed successfully!"
        echo
        echo "📋 Next Steps:"
        echo "1. Edit $CLAUDE_DIR/.env with your GitHub token"
        echo "2. Test with: claude new-project test-project react"
        echo "3. Navigate to any directory and run: claude"
        echo
        echo "📁 Foundation installed at: $CLAUDE_DIR"
        
        if [ -d "$BACKUP_DIR" ]; then
            echo "💾 Previous setup backed up to: $BACKUP_DIR"
        fi
        
        echo
        log_success "Ready to use Claude Code with your optimized setup!"
    else
        log_error "Installation completed with errors - please check the output above"
        exit 1
    fi
}

# Run the installer
main "$@"