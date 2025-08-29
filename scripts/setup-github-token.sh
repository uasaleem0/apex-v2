#!/bin/bash

# GitHub Token Setup Script
# Helps users configure their GitHub token for Claude Code Foundation

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

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

echo "🔑 GitHub Token Setup for Claude Code Foundation"
echo "=============================================="

CLAUDE_DIR="$HOME/Claude"
ENV_FILE="$CLAUDE_DIR/.env"
ENV_TEMPLATE="$CLAUDE_DIR/.env.template"

# Check if Claude directory exists
if [ ! -d "$CLAUDE_DIR" ]; then
    log_error "Claude directory not found at: $CLAUDE_DIR"
    log_info "Please run the foundation installer first"
    exit 1
fi

# Check if .env.template exists
if [ ! -f "$ENV_TEMPLATE" ]; then
    log_error ".env.template not found at: $ENV_TEMPLATE"
    log_info "Please ensure the foundation is properly installed"
    exit 1
fi

echo ""
log_info "Setting up your GitHub token for Claude Code integration..."
echo ""

# Provide instructions for getting a GitHub token
echo "📋 To get your GitHub Personal Access Token:"
echo ""
echo "1. Go to: https://github.com/settings/tokens"
echo "2. Click 'Generate new token' → 'Generate new token (classic)'"
echo "3. Give it a name: 'Claude Code Foundation'"
echo "4. Select permissions:"
echo "   ✅ repo (Full control of private repositories)"
echo "   ✅ workflow (Update GitHub Action workflows)"
echo "5. Click 'Generate token'"
echo "6. Copy the token (you won't see it again!)"
echo ""

# Create .env from template if it doesn't exist
if [ ! -f "$ENV_FILE" ]; then
    log_info "Creating .env file from template..."
    cp "$ENV_TEMPLATE" "$ENV_FILE"
    log_success ".env file created"
else
    log_info ".env file already exists"
fi

echo ""
echo "🔐 Please enter your GitHub Personal Access Token:"
echo "(The token will be hidden as you type)"
read -s -p "Token: " GITHUB_TOKEN
echo ""

if [ -z "$GITHUB_TOKEN" ]; then
    log_error "No token provided. Exiting."
    exit 1
fi

# Validate token format (basic check)
if [[ ! "$GITHUB_TOKEN" =~ ^(ghp_|github_pat_)[a-zA-Z0-9_]+ ]]; then
    log_warning "Token format doesn't match expected GitHub token patterns"
    echo "GitHub tokens usually start with 'ghp_' or 'github_pat_'"
    echo ""
    read -p "Continue anyway? (y/N): " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        log_info "Setup cancelled"
        exit 1
    fi
fi

# Update the .env file
log_info "Updating .env file with your token..."

# Use sed to replace the GitHub token line
if grep -q "GITHUB_TOKEN=" "$ENV_FILE"; then
    # Replace existing token
    sed -i.backup "s/^GITHUB_TOKEN=.*/GITHUB_TOKEN=$GITHUB_TOKEN/" "$ENV_FILE"
    log_success "GitHub token updated in .env file"
else
    # Add token if it doesn't exist
    echo "" >> "$ENV_FILE"
    echo "GITHUB_TOKEN=$GITHUB_TOKEN" >> "$ENV_FILE"
    log_success "GitHub token added to .env file"
fi

# Test the token
echo ""
log_info "Testing your GitHub token..."

if command -v gh >/dev/null 2>&1; then
    # Test with GitHub CLI if available
    if GITHUB_TOKEN="$GITHUB_TOKEN" gh auth status --hostname github.com >/dev/null 2>&1; then
        log_success "Token authentication successful!"
        
        # Get user info
        GITHUB_USER=$(GITHUB_TOKEN="$GITHUB_TOKEN" gh api user --jq .login 2>/dev/null)
        if [ -n "$GITHUB_USER" ]; then
            log_info "Authenticated as: $GITHUB_USER"
        fi
    else
        log_warning "Token test failed with GitHub CLI"
        log_info "Token saved anyway - test with: claude new-project test-project react"
    fi
else
    # Simple curl test if gh is not available
    RESPONSE=$(curl -s -H "Authorization: token $GITHUB_TOKEN" https://api.github.com/user)
    if echo "$RESPONSE" | grep -q '"login"'; then
        GITHUB_USER=$(echo "$RESPONSE" | grep '"login"' | cut -d'"' -f4)
        log_success "Token authentication successful!"
        log_info "Authenticated as: $GITHUB_USER"
    else
        log_warning "Token test failed"
        log_info "Token saved anyway - test with: claude new-project test-project react"
    fi
fi

echo ""
log_success "🎉 GitHub token setup complete!"
echo ""
echo "📝 Next steps:"
echo "1. Test the integration: claude new-project test-project react"
echo "2. The test project will create both local Git and GitHub repositories"
echo "3. Delete the test project when you're satisfied it works"
echo ""
echo "📁 Your token is stored in: $ENV_FILE"
echo "🔒 This file is private and excluded from Git"
echo ""
log_info "You can now use 'claude new-project' commands with automatic GitHub integration!"