#!/bin/bash

# Claude Code Project Setup Script with Git Integration
# Usage: claude new-project [project-name] [project-type] [--no-git] [--no-github]

set -e  # Exit on error

PROJECT_NAME=${1:-"my-project"}
PROJECT_TYPE=${2:-"react"}
SKIP_GIT=false
SKIP_GITHUB=false

# Parse additional arguments
shift 2 2>/dev/null || true  # Remove first two arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --no-git)
            SKIP_GIT=true
            shift
            ;;
        --no-github)
            SKIP_GITHUB=true
            shift
            ;;
        *)
            echo "Unknown option: $1"
            shift
            ;;
    esac
done

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

echo "🚀 Setting up Claude Code structure for: $PROJECT_NAME"
echo "📂 Project type: $PROJECT_TYPE"

# Load environment variables if available
if [ -f "$HOME/Claude/.env" ]; then
    source "$HOME/Claude/.env"
fi

# Create main project directory
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME"

# Create .claude directory and subdirectories
mkdir -p .claude/agents
mkdir -p docs

echo "📁 Created directory structure"

# Create CLAUDE.md
cat > CLAUDE.md << 'EOF'
# [PROJECT_NAME]

## Quick Context
[One sentence: What does this project do?]

## Documentation Index
@docs/_index.md

## Current Sprint Focus
@docs/current-sprint.md

## Available Context (Load as needed):
- Architecture: @docs/architecture.md
- API Integration: @docs/api-integration.md
- Testing Guide: @docs/testing-guide.md

## Quick Commands
- Dev: `npm run dev` (or your dev command)
- Test: `npm test` (or your test command)
- Build: `npm run build` (or your build command)

---
💡 **Update Current Sprint Goals weekly for better context**
EOF

# Replace placeholder with actual project name
sed -i "s/\[PROJECT_NAME\]/$PROJECT_NAME/g" CLAUDE.md

echo "📄 Created CLAUDE.md"

# Create documentation index
cat > docs/_index.md << 'EOF'
# Documentation Index

## Available Documentation:
- `architecture.md` - System design, tech stack, key patterns
- `current-sprint.md` - This week's goals, blocked items, focus areas
- `api-integration.md` - Data fetching patterns, state management
- `testing-guide.md` - Testing standards, mocking, coverage requirements

## Quick Reference Guide:
- **Architecture questions** → Load @docs/architecture.md
- **Current goals/sprint** → Load @docs/current-sprint.md
- **API/data questions** → Load @docs/api-integration.md
- **Testing questions** → Load @docs/testing-guide.md

## Context Loading Strategy:
Claude automatically loads relevant docs based on your question context. This index helps Claude understand available documentation without loading all files unnecessarily.
EOF

echo "📇 Created documentation index"

# Create current sprint template
cat > docs/current-sprint.md << 'EOF'
# Current Sprint - Week of [DATE]

## Primary Goals
1. **[Goal 1]** - [Description]
2. **[Goal 2]** - [Description]
3. **[Goal 3]** - [Description]

## In Progress
- [Current task 1]
- [Current task 2]

## Blocked Items
- [Blocked item 1] - [Reason]
- [Blocked item 2] - [Reason]

## Technical Debt
- [Technical debt item 1]
- [Technical debt item 2]

## Notes
[Any additional context about current work]

---
💡 **Update this file weekly to keep Claude informed of current priorities**
EOF

# Replace date placeholder
CURRENT_DATE=$(date "+%B %Y")
sed -i "s/\[DATE\]/$CURRENT_DATE/g" docs/current-sprint.md

echo "📅 Created sprint planning document"

# Create architecture template based on project type
if [ "$PROJECT_TYPE" = "react" ]; then
cat > docs/architecture.md << 'EOF'
# Architecture Overview

## Tech Stack
- **Frontend**: React 18 with TypeScript
- **Build Tool**: Vite
- **State Management**: Zustand for global state, React Query for server state
- **Styling**: Tailwind CSS + CSS Modules
- **Testing**: Jest + React Testing Library

## Project Structure
```
src/
├── components/     # Reusable UI components
├── pages/         # Route components
├── hooks/         # Custom React hooks
├── stores/        # Zustand state stores
├── utils/         # Helper functions
└── types/         # TypeScript definitions
```

## Key Patterns & Conventions
- Components use TypeScript interfaces for props
- Props interfaces named `[ComponentName]Props`
- Custom hooks prefixed with `use`
- Components under 200 lines (extract if larger)
- All interactive elements have accessibility attributes

## Development Standards
- ESLint + Prettier for code formatting
- TypeScript strict mode enabled
- 80%+ test coverage for utilities and hooks
- Semantic HTML with ARIA attributes
EOF
else
cat > docs/architecture.md << 'EOF'
# Architecture Overview

## Tech Stack
[Define your technology choices here]

## Project Structure
```
[Define your folder structure here]
```

## Key Patterns & Conventions
[Define your coding standards and patterns]

## Development Standards
[Define your quality standards and practices]
EOF
fi

echo "🏛️ Created architecture documentation"

# Create API integration guide
cat > docs/api-integration.md << 'EOF'
# API Integration Guide

## Data Fetching Patterns
[Define how you handle API calls in this project]

## API Client Setup
[Configuration for your HTTP client]

## Error Handling
[How errors are handled and displayed to users]

## Authentication
[How authentication is implemented]

## State Management
[How server state is cached and synchronized]
EOF

echo "📡 Created API integration guide"

# Create testing guide
cat > docs/testing-guide.md << 'EOF'
# Testing Guide

## Testing Philosophy
[Your approach to testing in this project]

## Test Structure
[How tests are organized and named]

## Common Test Utilities
[Reusable testing helpers and mocks]

## Coverage Requirements
[Coverage thresholds and quality gates]

## Running Tests
- Unit tests: `npm test`
- Integration tests: `npm run test:integration`
- End-to-end tests: `npm run test:e2e`
EOF

echo "🧪 Created testing guide"

# Create project settings
cat > .claude/settings.json << 'EOF'
{
  "extends": ["~/Claude/settings.json"],
  "hooks": {
    "pre-commit": [
      "npm run lint -- --fix",
      "npm run typecheck",
      "npm test -- --watchAll=false",
      "echo 'All quality checks passed'"
    ],
    "post-commit": [
      "echo 'Commit: $(git log -1 --pretty=format:\"%h - %s\")'",
      "git log --oneline -3"
    ],
    "pre-push": [
      "npm run build",
      "echo 'Build successful, ready to push'"
    ],
    "post-task": [
      "echo 'Task completed at $(date)'",
      "git status"
    ],
    "project-open": [
      "echo 'Welcome to PROJECT_NAME! $(date)'",
      "git status"
    ]
  },
  "permissions": {
    "deny": [
      "**/node_modules/**",
      "**/build/**",
      "**/dist/**",
      "**/coverage/**",
      "**/.env*"
    ]
  },
  "customCommands": {
    "dev": "npm run dev",
    "test": "npm test",
    "build": "npm run build",
    "setup": "npm install",
    "clean": "rm -rf node_modules build dist && npm install",
    "quick-commit": "git add . && git commit -m",
    "new-feature": "git checkout -b feature/$1",
    "deploy": "npm run build && npm run deploy",
    "backup": "git add . && git commit -m 'Auto backup: $(date)' && git push"
  }
}
EOF

# Replace project name in settings
sed -i "s/PROJECT_NAME/$PROJECT_NAME/g" .claude/settings.json

echo "⚙️ Created project settings"

# Create MCP configuration
cat > .mcp.json << 'EOF'
{
  "mcpServers": {
    "local-database": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-sqlite", "--db-path", "./dev.db"],
      "env": {
        "NODE_ENV": "development"
      }
    },
    "file-system": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-filesystem", "--allowed-directory", "./src"],
      "env": {}
    },
    "github-integration": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-github"],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "${GITHUB_TOKEN}"
      }
    }
  }
}
EOF

echo "🔌 Created MCP configuration"

# Create project-specific agents based on type
if [ "$PROJECT_TYPE" = "react" ]; then
# Create React-specific agents
cat > .claude/agents/feature-builder.md << 'EOF'
---
name: feature-builder
description: Build new features for this React TypeScript project
tools: Read, Write, Edit, Bash, TodoWrite
---

You are a specialized feature builder for this React TypeScript application.

## This Project's Architecture Context
- React 18 with TypeScript and Vite
- Zustand for global state management
- Tailwind CSS for styling
- Jest + React Testing Library for testing

## Feature Building Process
1. Plan component structure and files needed
2. Create TypeScript interfaces for props and data
3. Build component following our patterns
4. Add Zustand store if global state needed
5. Write comprehensive tests
6. Update routing if needed

## Output
Always provide complete, working code that integrates with our existing architecture.
EOF

cat > .claude/agents/bug-hunter.md << 'EOF'
---
name: bug-hunter
description: Debug issues in this React TypeScript application
tools: Read, Grep, Bash, Edit
---

You are a debugging specialist for this React TypeScript application.

## Common Issues in This Project
- State synchronization between Zustand stores and React components
- TypeScript type errors and prop mismatches
- React hook dependency issues
- Performance problems with unnecessary re-renders

## Debugging Strategy
1. Check console for React warnings and TypeScript errors
2. Verify Zustand store state and actions
3. Check component prop types and interfaces
4. Look for performance issues with React DevTools
5. Test component isolation and dependencies

## Output
Provide root cause analysis and specific fixes for this codebase.
EOF
fi

echo "🤖 Created project-specific agents"

# Create project-specific .gitignore
if [ "$PROJECT_TYPE" = "react" ]; then
cat > .gitignore << 'EOF'
# Claude Code Personal Settings
.claude/settings.local.json

# Environment Variables
.env*
!.env.example

# Dependencies
node_modules/
.pnp
.pnp.js

# Testing
coverage/

# Production builds
build/
dist/
*.tsbuildinfo

# Runtime data
pids
*.pid
*.seed
*.pid.lock

# Logs
*.log
logs/
npm-debug.log*
yarn-debug.log*
yarn-error.log*
lerna-debug.log*

# IDE
.vscode/
.idea/
*.swp
*.swo

# OS Files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db
desktop.ini
EOF
else
cat > .gitignore << 'EOF'
# Claude Code Personal Settings
.claude/settings.local.json

# Environment Variables
.env*
!.env.example

# Dependencies (adjust based on your project type)
node_modules/

# Build Outputs
build/
dist/
coverage/

# Logs
*.log
logs/

# IDE
.vscode/
.idea/

# OS Files
.DS_Store
Thumbs.db
EOF
fi

echo "🚫 Created .gitignore"

# Initialize Git repository if requested
if [ "$SKIP_GIT" = false ]; then
    log_info "Initializing Git repository..."
    
    if git init; then
        log_success "Git repository initialized"
        
        # Add all files to Git
        git add .
        
        # Create initial commit
        if git commit -m "Initial Claude Code project setup

🚀 Created with Claude Code Foundation
- Project: $PROJECT_NAME
- Type: $PROJECT_TYPE
- Generated: $(date)

📚 Includes:
- Complete documentation structure
- Project-specific agents
- Automated development workflow
- Claude Code integration

🤖 Generated with Claude Code Foundation
"; then
            log_success "Initial commit created"
        else
            log_warning "Failed to create initial commit"
        fi
    else
        log_error "Failed to initialize Git repository"
    fi
fi

# Create GitHub repository if requested and GitHub CLI is available
if [ "$SKIP_GIT" = false ] && [ "$SKIP_GITHUB" = false ]; then
    if command -v gh >/dev/null 2>&1; then
        log_info "Creating GitHub repository..."
        
        # Check if user is authenticated with GitHub CLI
        if gh auth status >/dev/null 2>&1; then
            # Create GitHub repository
            if gh repo create "$PROJECT_NAME" --private --description "Claude Code project: $PROJECT_NAME" --source=. --remote=origin --push; then
                log_success "GitHub repository created and connected"
                log_info "Repository URL: https://github.com/$(gh api user --jq .login)/$PROJECT_NAME"
            else
                log_warning "Failed to create GitHub repository - you can create it manually later"
                log_info "To connect manually: gh repo create $PROJECT_NAME --private --source=. --remote=origin --push"
            fi
        else
            log_warning "GitHub CLI not authenticated"
            log_info "Run 'gh auth login' to authenticate, then:"
            log_info "gh repo create $PROJECT_NAME --private --source=. --remote=origin --push"
        fi
    else
        log_warning "GitHub CLI (gh) not found - skipping GitHub repository creation"
        log_info "Install GitHub CLI: https://cli.github.com/"
        log_info "Then run: gh repo create $PROJECT_NAME --private --source=. --remote=origin --push"
    fi
fi

echo ""
echo "✅ Claude Code project setup complete!"
echo ""
echo "📂 Project created: $(pwd)"
echo "🎯 Next steps:"

if [ "$SKIP_GIT" = false ]; then
    echo "   ✅ Git repository initialized"
    if [ "$SKIP_GITHUB" = false ]; then
        echo "   📡 Check GitHub repository creation above"
    fi
else
    echo "   📝 Initialize Git: git init && git add . && git commit -m 'Initial commit'"
    if [ "$SKIP_GITHUB" = false ]; then
        echo "   🔗 Create GitHub repo: gh repo create $PROJECT_NAME --private --source=. --remote=origin --push"
    fi
fi

echo ""
echo "🔧 Customize your project:"
echo "   1. Update CLAUDE.md with your project description"
echo "   2. Update docs/current-sprint.md with your actual goals"
echo "   3. Modify .claude/settings.json with project-specific commands"
echo ""

if [ "$PROJECT_TYPE" = "react" ]; then
    echo "🚀 Start developing:"
    echo "   npm install           # Install dependencies"
    echo "   npm run dev          # Start development server"
    echo "   npm test             # Run tests"
    echo ""
fi

echo "📖 Documentation:"
echo "   - Architecture: docs/architecture.md"
echo "   - Current Sprint: docs/current-sprint.md"
echo "   - API Guide: docs/api-integration.md"
echo "   - Testing: docs/testing-guide.md"
echo ""
echo "🤖 Claude integration ready!"