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

## Common Commands to Remember
- `npm run lint` - Check and fix code style
- `npm run typecheck` - Verify TypeScript types
- `npm test` - Run test suite
- `git status` - Check repository state and changes

## Personal Notes
This configuration applies to ALL my projects. Project-specific instructions should go in each project's CLAUDE.md file.

---
**Location**: `C:\Users\User\Claude\` - My personal Claude Code setup
**System Files**: `C:\Users\User\Claude-Installation-DO-NOT-EDIT\` - Claude Code system (don't modify)