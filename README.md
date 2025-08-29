# Claude Code Foundation Setup

Your personal Claude Code configuration that travels with you across PCs. This foundation provides global settings, specialized agents, automation scripts, and project setup tools that work consistently everywhere.

## 🚀 Quick Installation (New PC)

1. **Install Claude Code** first from https://claude.ai/code

2. **Clone and install this foundation**:
   ```bash
   git clone [your-foundation-repo-url] ~/claude-foundation
   cd ~/claude-foundation
   chmod +x install-foundation.sh
   ./install-foundation.sh
   ```

3. **Add your GitHub token** to `.env`:
   ```bash
   cp ~/Claude/.env.template ~/Claude/.env
   # Edit ~/Claude/.env and add your actual GitHub token
   ```

4. **Test the setup**:
   ```bash
   claude new-project test-project react
   ```

Done! Your complete Claude Code environment is ready.

## 🎯 What This Foundation Provides

### 🚀 **Instant Project Setup**
- `claude new-project <name> <type>` - Complete project scaffolding
- Automatic Git repository initialization
- GitHub repository creation (optional)
- Full documentation structure
- Project-specific agents

### 🤖 **Global Specialized Agents**
- **general-debugger.md** - First-line debugging across languages
- **performance-optimizer.md** - Algorithm and resource optimization
- **security-analyzer.md** - Vulnerability analysis and OWASP compliance
- **test-generator.md** - Comprehensive test suite generation

### ⚙️ **Universal Settings**
- Consistent code style preferences
- Security standards and best practices
- Git automation and hooks
- Custom commands and shortcuts

### 📚 **Smart Documentation**
- Context-aware loading with @file imports
- Token-efficient documentation structure
- Sprint planning and architecture guides
- API integration patterns

## 📁 Two-Repository Strategy

This setup uses a **foundation + project** approach:

1. **Foundation Repository** (this one)
   - Global configuration and agents
   - Setup scripts and automation
   - Universal preferences and standards
   - Shared across all your PCs

2. **Individual Project Repositories**
   - Created automatically with `claude new-project`
   - Project-specific code and configuration
   - Inherits from foundation but customizable
   - Each project has its own Git repository

## 🗂️ Directory Structure

```
~/Claude/                           # Your foundation (this repository)
├── settings.json                   # Global Claude Code settings
├── CLAUDE.md                       # Universal coding preferences
├── agents/                         # Global specialized agents
│   ├── general-debugger.md
│   ├── performance-optimizer.md
│   ├── security-analyzer.md
│   └── test-generator.md
├── scripts/
│   └── setup-project.sh            # Project creation automation
├── install-foundation.sh           # New PC installation
├── .env                           # Your tokens (private, not in Git)
└── README.md                      # This guide

~/projects/my-app/                  # Individual project (separate repo)
├── .claude/
│   ├── settings.json               # Project-specific overrides
│   └── agents/                     # Project-specific agents
├── docs/                          # Auto-generated documentation
├── CLAUDE.md                      # Project context
└── [your code]                    # Your actual project files

~/Claude-Installation-DO-NOT-EDIT/  # Claude Code system files (don't touch)
```

## 🛠️ Available Commands

### Project Creation
```bash
claude new-project my-app react           # React project with Git
claude new-project my-api node --no-git   # No Git initialization
claude new-project tool python --no-github # Git but no GitHub repo
```

### Foundation Management
```bash
./install-foundation.sh              # Install foundation on new PC
git pull                             # Update foundation from repository
```

### Environment Setup
```bash
cp .env.template .env                # Create environment file
# Edit .env with your actual tokens

# OR use the automated setup script:
./scripts/setup-github-token.sh     # Interactive GitHub token setup
```

## 🔧 Customization

### Adding Global Agents
1. Create `~/Claude/agents/your-agent.md`
2. Use the existing agents as templates
3. Agents are automatically available in all projects

### Custom Commands
Edit `~/Claude/settings.json` to add your own shortcuts:
```json
{
  "customCommands": {
    "your-command": "your shell command here"
  }
}
```

### Project Templates
Modify `~/Claude/scripts/setup-project.sh` to:
- Add new project types
- Customize generated documentation
- Change default configurations

## 🔒 Security & Privacy

### ✅ Shared (in Git)
- Global settings and preferences
- Universal agents and documentation
- Setup scripts and templates
- Public configuration

### 🚫 Private (not in Git)
- API tokens and credentials (`.env` files)
- Personal information
- Individual project code
- Sensitive configuration

## 🔑 Token Integration

### GitHub Integration

**Option 1: Automated Setup (Recommended)**
```bash
cd ~/Claude
./scripts/setup-github-token.sh     # Interactive guided setup
```

**Option 2: Manual Setup**
1. Create a Personal Access Token at https://github.com/settings/tokens
2. Grant `repo` permissions for repository management
3. Add to `~/Claude/.env`:
   ```bash
   GITHUB_TOKEN=your_token_here
   ```

### Other Services
Add additional API keys to `.env` as needed:
```bash
OPENAI_API_KEY=your_key_here
ANTHROPIC_API_KEY=your_key_here
```

## 🔧 Troubleshooting

### Claude Code Not Found
```bash
# Verify Claude Code installation
claude --version

# If not installed, get it from:
# https://claude.ai/code
```

### Permission Issues
```bash
# Make scripts executable
chmod +x ~/Claude/scripts/*.sh
chmod +x ~/Claude/*.sh
```

### Git Authentication
```bash
# Test GitHub CLI authentication
gh auth status

# Login if needed
gh auth login
```

### MCP Servers
```bash
# Install common MCP servers globally
npm install -g @modelcontextprotocol/server-github
npm install -g @modelcontextprotocol/server-sqlite
```

## 🔄 Updates and Maintenance

### Updating Foundation
```bash
cd ~/Claude
git pull
```

### Backing Up Configuration
Your foundation repository IS your backup. Commit and push changes:
```bash
cd ~/Claude
git add .
git commit -m "Update foundation settings"
git push
```

### Adding New PCs
1. Install Claude Code
2. Run the installation script
3. Add your tokens to `.env`

## 🆘 Support

- **Claude Code Issues**: https://github.com/anthropics/claude-code/issues
- **Foundation Issues**: Check this repository's issues
- **Documentation**: https://docs.anthropic.com/en/docs/claude-code/

---

**💡 Tip**: Update your current sprint goals in individual projects weekly using `docs/current-sprint.md` for better Claude Code context and performance.