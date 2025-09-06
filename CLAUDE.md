# My Personal Claude Code Configuration

## 🔥 10 Hard Rules (Never Break These)

1. **File Size Limit**: Never create files longer than 500 lines. Split into modules if approaching limit.
2. **Function Size Limit**: Functions must be under 50 lines with single, clear responsibility.
3. **Security First**: Never commit secrets, API keys, or credentials. Always use environment variables.
4. **Test Everything**: Write tests for every code change. No feature is complete without tests.
5. **Use Type Safety**: Always use TypeScript strict mode, Python type hints, or equivalent.
6. **Validate All Inputs**: Sanitize and validate user inputs, especially for authentication/payments.
7. **Error Handling**: No silent failures. Always handle errors explicitly with proper logging.
8. **Performance Tools**: Use `rg` instead of `grep`, modern build tools, efficient queries.
9. **Semantic Commits**: Use conventional commit format (feat:, fix:, docs:, etc.).
10. **Documentation**: Document all public interfaces with JSDoc/docstrings and examples.

## 🚫 5 Anti-Patterns (Never Do These)

1. **Don't edit files without reading them first** - Always understand context before changes
2. **Don't create components over 200 lines** - Break into smaller, focused components  
3. **Don't add dependencies without justification** - Every dependency must solve a real problem
4. **Don't skip error boundaries** - Especially in React apps handling user data
5. **Don't write tests that don't test behavior** - Avoid testing implementation details

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
- **CRITICAL**: Always use `rg` (ripgrep) instead of `grep` and `find`
- Prefer specific file searches over broad exploration
- Run tests after significant changes
- Use specialized subagents for different task types

## 🏗️ Architecture Standards

### Project Structure Guidelines
- Use vertical slice architecture with tests next to code
- Group by feature, not by technical layer
- Keep related functionality together
- Example structure:
```
src/
  components/         # Reusable UI components
    Button/
      Button.tsx
      Button.test.tsx
      Button.stories.tsx
  features/          # Feature-based organization
    authentication/
      hooks/
      components/
      services/
      __tests__/
    membership/
      hooks/
      components/
      services/
      __tests__/
```

### Language-Specific Standards

#### JavaScript/TypeScript
- Use TypeScript strict mode always
- Prefer `const` assertions and `as const`
- Use Zod or similar for runtime validation
- Implement proper error boundaries
- Follow React Hook rules strictly

#### Python
- Use type hints for all function signatures
- Follow PEP8 with 100-character line limit
- Use Pydantic for data validation
- Implement proper exception handling
- Use `pathlib` instead of `os.path`

### Security Implementation
- Use HTTPS for all external communications
- Implement rate limiting for APIs
- Hash passwords with bcrypt or similar
- Use parameterized queries for databases
- Validate file uploads strictly
- Implement proper CORS policies

## Foundation-Specific Commands

### Project Creation (Story-Driven by Default)
- `claude new-project <name> <type>` - Create project with BMAD-Lite story-driven development
- `claude bmad-full-setup` - Upgrade current project to full BMAD (43 files + complete agents)
- `claude setup-tokens` - Interactive GitHub token configuration
- `claude update-foundation` - Update global foundation settings

### Streamlined Autonomous Development (Default Workflow)
- `claude setup-project` - Complete PRD interview, analysis, MCP selection, and story creation
- `claude status` - Story readiness dashboard and validation status
- `claude validate` - Strategic validation with blocker detection and MCP integration
- `claude build` - Autonomous implementation with checkpointing and progress logging
- `claude map` - Visual story breakdown and epic organization

### Enhanced Bundle Management & Quality
- `/status` - **NEW** Complete project dashboard with bundle progress and priority actions
- `/bundles` - **NEW** List all story bundles and their development status
- `/bundle [A/B/C]` - **NEW** Switch between parallel bundle development contexts
- `/review [bundle]` - **NEW** Comprehensive user review of completed story bundles
- `/add-feature "desc"` - **NEW** Dynamic feature addition with intelligent workflow routing
- `/design-review` - Comprehensive automated UI/UX review with Playwright MCP validation
- `claude fix` - Apply standard security, accessibility, and performance fixes
- `claude scan` - Security vulnerability scan and exposed secrets detection

### Git & Deployment
- `claude quick-commit "message"` - Add, commit with message
- `claude backup` - Auto backup with timestamp and push
- `claude sync` - Pull and push changes
- `claude status` - Git status + recent commit history

## Architecture Overview

### Story-Driven Development Foundation
This foundation now uses **BMAD-Lite** as the default approach:
- **Story-driven development** for ALL projects (eliminates context loss)
- **Professional documentation** automatically generated  
- **Systematic quality validation** at every step
- **Choice of complexity**: BMAD-Lite (default) or Full BMAD (complex projects)

### Two-Repository + Story Strategy
- **Foundation repo** (`~/Claude/`): Global agents, settings, story templates, scripts
- **Project repos** (`~/projects/`): Story files + implementation with complete context
- **Full BMAD option**: Available when projects need enterprise-level structure

### Available Global Agents (10 Total)
- `general-debugger` - Cross-language debugging and error analysis
- `performance-optimizer` - Algorithm and resource optimization
- `security-analyzer` - Vulnerability analysis and OWASP compliance  
- `test-generator` - Comprehensive test suite generation
- `documentation-manager` - Technical documentation and API docs
- `validation-gates` - Quality gate enforcement
- `story-writer` - Creates detailed, self-contained story files with complete context
- `product-owner` - Validates requirements alignment and story completeness
- `project-analyzer` - Industry analysis and MCP selection for strategic validation
- `build-manager` - Autonomous implementation with checkpointing and session management

### Enhanced BMAD Agents
- `Sally (ux-expert)` - **REVOLUTIONARY** Post-architecture UI/UX with Playwright MCP, story-by-story validation, iterative refinement, and WCAG AA+ compliance
- `Enhanced QA (bmad-enhanced-qa)` - Security scanning with Semgrep MCP, visual validation, and comprehensive technical testing

### Enhanced Streamlined Workflow
1. `claude new-project <name> <type>` creates **story-driven project structure**
2. `claude setup-project` provides **complete PRD → Stories → MCP setup**
3. `claude validate` runs **strategic validation with real-time blocker detection**
4. `claude build` enables **autonomous implementation with checkpointing**
5. **Optional upgrade** to Full BMAD with `claude bmad-full-setup`

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