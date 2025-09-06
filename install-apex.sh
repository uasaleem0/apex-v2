#!/bin/bash

# APEX Installation Script
# Autonomous Parallel EXecution - Revolutionary AI Development System

set -e

echo "🚀 APEX Installation Script"
echo "=================================="
echo "Installing Autonomous Parallel EXecution (APEX) Development System"
echo ""

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if we're in the right directory or need to clone
if [ ! -f "CLAUDE.md" ] && [ ! -d "apex-implementation" ]; then
    print_status "APEX system not found. Cloning from GitHub..."
    
    # Check if git is installed
    if ! command -v git &> /dev/null; then
        print_error "Git is not installed. Please install git first."
        exit 1
    fi
    
    # Clone the repository
    git clone https://github.com/uasaleem0/claude-foundation.git ~/Claude
    cd ~/Claude
    print_success "APEX system cloned to ~/Claude"
else
    print_success "APEX system found in current directory"
fi

# Verify core components
print_status "Verifying APEX installation..."

required_dirs=(
    "apex-implementation"
    "agents"
    ".claude/commands"
    "commands"
)

required_files=(
    "CLAUDE.md"
    "APEX-COMPLETE-COMMAND-REFERENCE.md"
    "APEX-INSTALLATION-GUIDE.md"
)

missing_components=0

for dir in "${required_dirs[@]}"; do
    if [ ! -d "$dir" ]; then
        print_error "Missing required directory: $dir"
        missing_components=$((missing_components + 1))
    fi
done

for file in "${required_files[@]}"; do
    if [ ! -f "$file" ]; then
        print_error "Missing required file: $file"
        missing_components=$((missing_components + 1))
    fi
done

if [ $missing_components -gt 0 ]; then
    print_error "Installation incomplete. Missing $missing_components components."
    exit 1
fi

# Set up initial configuration
print_status "Setting up APEX configuration..."

# Create user's personal CLAUDE.md if it doesn't exist
if [ ! -f "CLAUDE.md" ]; then
    print_warning "CLAUDE.md not found. Creating default configuration..."
    # Could copy from a template here if we had one
fi

# Make scripts executable
if [ -d "scripts" ]; then
    chmod +x scripts/*.sh 2>/dev/null || true
    print_success "Made scripts executable"
fi

# Verify agent files
print_status "Verifying APEX agents..."

core_agents=(
    "agents/apex-optimizer.md"
    "apex-implementation/agents/analyst.md"
    "apex-implementation/agents/pm.md"
    "apex-implementation/agents/architect.md"
    "apex-implementation/agents/ux-expert.md"
)

for agent in "${core_agents[@]}"; do
    if [ -f "$agent" ]; then
        print_success "✓ $(basename "$agent" .md) agent ready"
    else
        print_warning "⚠ Missing agent: $agent"
    fi
done

# Verify command files
print_status "Verifying APEX commands..."

key_commands=(
    ".claude/commands/status.md"
    ".claude/commands/bundle-management.md"
    ".claude/commands/add-feature.md"
    ".claude/commands/apex-optimize.md"
    ".claude/commands/apex-note.md"
)

for command in "${key_commands[@]}"; do
    if [ -f "$command" ]; then
        print_success "✓ $(basename "$command" .md) command ready"
    else
        print_warning "⚠ Missing command: $command"
    fi
done

# Create projects directory if it doesn't exist
if [ ! -d "projects" ]; then
    mkdir -p projects
    print_success "Created projects directory"
fi

# Final success message
echo ""
echo "🎉 APEX INSTALLATION COMPLETE!"
echo "=================================="
echo ""
echo "Your APEX (Autonomous Parallel EXecution) system is ready!"
echo ""
echo "📚 Quick Start:"
echo "   /status                    - Your main dashboard"
echo "   /apex-note \"insight\"       - Capture observations"
echo "   @apex-analyst              - Start with market research"
echo ""
echo "📖 Documentation:"
echo "   APEX-COMPLETE-COMMAND-REFERENCE.md  - Complete command guide"
echo "   APEX-INSTALLATION-GUIDE.md          - Full installation guide"
echo "   APEX-COMPLETE-FOLDER-STRUCTURE.md   - System overview"
echo ""
echo "🚀 Start your first project:"
echo "   @apex-analyst"
echo "   *research \"your project idea\""
echo ""
echo "💡 Enable autonomous optimization:"
echo "   /apex-optimize weekly"
echo ""
print_success "Ready to revolutionize your development process!"
echo ""