# My Personal Claude Code Configuration

## Universal Coding Preferences

### Code Style
- Use consistent indentation (2 spaces for JS/TS/JSON, 4 for Python)
- Prefer descriptive variable names over comments
- Follow language-specific conventions (camelCase for JS, snake_case for Python)
- Keep functions small and focused (single responsibility)

### Development Workflow
- Always run linting and type checking before committing
- Write meaningful commit messages with clear context
- Test changes before marking tasks complete
- Use semantic versioning for releases

### Security Standards
- Never commit secrets, API keys, or credentials
- Validate inputs and sanitize outputs
- Use environment variables for configuration
- Follow OWASP best practices for web security

### Documentation Standards
- README files should include setup, usage, and examples
- Document API endpoints with request/response examples
- Include inline documentation for complex business logic
- Keep documentation updated with code changes

### Tool Preferences
- Use TodoWrite for complex multi-step tasks
- Prefer specific file searches over broad exploration
- Run tests after significant changes
- Use specialized subagents for different task types

## Foundation-Specific Commands
- `claude new-project <name> <type>` - Create new project with full setup
- `claude setup-tokens` - Interactive GitHub token configuration
- `claude update-foundation` - Update global foundation settings
- `./install-foundation.sh` - Install foundation on new PC
- Common development commands defined in settings.json:
  - `claude quick-commit "message"` - Add, commit with message
  - `claude backup` - Auto backup with timestamp
  - `claude sync` - Pull and push changes
  - `claude status` - Git status + recent commits

## Architecture Overview
This foundation uses a two-repository strategy:
- **Foundation repo** (`~/Claude/`): Global agents, settings, scripts
- **Project repos** (`~/projects/`): Individual codebases with project-specific context

### Available Global Agents
- `general-debugger` - Cross-language debugging and error analysis
- `performance-optimizer` - Algorithm and resource optimization
- `security-analyzer` - Vulnerability analysis and OWASP compliance  
- `test-generator` - Comprehensive test suite generation

### Project Creation Workflow
1. `claude new-project <name> <type>` creates full structure
2. Auto-generates documentation, agents, and settings
3. Initializes Git repo and optionally creates GitHub repo
4. Includes hooks for automated quality checks

## MCP Servers Configured
- GitHub integration with personal access token
- Filesystem access for home directory
- Web search via Brave API (when configured)
- Project-specific SQLite and filesystem servers

## Personal Notes
This configuration applies to ALL my projects. Project-specific instructions should go in each project's CLAUDE.md file.

---
**Location**: `C:\Users\User\Claude\` - My personal Claude Code setup
**System Files**: `C:\Users\User\Claude-Installation-DO-NOT-EDIT\` - Claude Code system (don't modify)