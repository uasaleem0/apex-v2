#!/bin/bash
# APEX Project Setup - Initialize new projects with proper structure

set -e

setup_project() {
    local project_name="$1"
    
    if [[ -z "$project_name" ]]; then
        echo "❌ Error: Project name required"
        echo "Usage: $0 <project-name>"
        echo "Example: $0 twp-website"
        exit 1
    fi
    
    # Normalize project name (lowercase, hyphens)
    project_name=$(echo "$project_name" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-\|-$//g')
    
    echo "🚀 Setting up APEX project: $project_name"
    
    # Create project directory
    local project_dir="./projects/$project_name"
    if [[ -d "$project_dir" ]]; then
        echo "⚠️  Project directory already exists: $project_dir"
        read -p "Do you want to overwrite it? (y/N): " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo "❌ Setup cancelled"
            exit 1
        fi
        rm -rf "$project_dir"
    fi
    
    mkdir -p "$project_dir"
    cd "$project_dir"
    
    echo "📁 Created project directory: $project_dir"
    
    # Create standard project structure
    mkdir -p {docs,src,tests,designs}
    mkdir -p docs/{stories,architecture,requirements}
    
    # Create session directory for unified session system
    mkdir -p ".claude/sessions/$project_name"
    
    echo "📂 Created project structure with unified session support"
    
    # Create initial README
    cat > README.md << EOF
# $project_name

APEX V2 Project with Unified Session System

## Project Structure
- \`docs/\` - Project documentation
  - \`requirements/\` - PRDs, user stories, acceptance criteria
  - \`architecture/\` - System design, technical specifications
  - \`stories/\` - Individual story files for implementation
- \`src/\` - Source code
- \`tests/\` - Test files
- \`designs/\` - UI/UX designs and mockups

## APEX Workflow
1. **@analyst** - Market research and competitive analysis
2. **@pm** - Product requirements and user story development  
3. **@architect** - System architecture and technical design
4. **@ux-expert** - UI/UX design and component specifications
5. **@build-manager** - Autonomous implementation

## Session Management
This project uses the APEX V2 unified session system:
- All agent interactions are preserved in \`.claude/sessions/$project_name/\`
- Zero context loss between sessions
- 50% improved token efficiency
- Complete user feedback and validation tracking

Created: $(date)
EOF
    
    echo "📄 Created README.md with project overview"
    
    # Create .gitignore
    cat > .gitignore << EOF
# Dependencies
node_modules/
*.log

# Build outputs
dist/
build/

# Environment variables
.env
.env.local

# IDE files
.vscode/
.idea/

# APEX session files (optional - you may want to commit these)
# .claude/

# OS files
.DS_Store
Thumbs.db
EOF
    
    echo "🙈 Created .gitignore"
    
    # Initialize git if not already a repo
    if [[ ! -d ".git" ]]; then
        git init
        git add .
        git commit -m "Initial APEX V2 project setup for $project_name

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude <noreply@anthropic.com>"
        echo "📦 Initialized git repository with initial commit"
    fi
    
    echo ""
    echo "✅ Project setup complete!"
    echo ""
    echo "🚀 Next steps:"
    echo "1. cd $project_dir"
    echo "2. @analyst    # Start with market research"
    echo "3. @pm         # Create requirements and stories"
    echo "4. @architect  # Design system architecture"
    echo "5. @ux-expert  # Create UI/UX specifications"
    echo "6. @build-manager  # Implement the project"
    echo ""
    echo "📊 Monitor progress: /status"
    echo "📦 Manage bundles: /bundles"
}

# Run setup
setup_project "$1"