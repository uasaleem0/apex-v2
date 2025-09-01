# Story-Driven Development Workflow

Your foundation now uses story-driven development by default. Here's how to use it effectively.

## 🎯 Default Workflow (BMAD-Lite)

### 1. Create Projects (Story-Driven by Default)
```bash
claude new-project my-app react
```

**Automatically includes:**
- ✅ Story directory structure (`docs/stories/`)
- ✅ Story templates ready to use  
- ✅ Story-writer and product-owner agents
- ✅ All your existing expert foundation patterns

### 2. Develop Features Using Stories
```bash
# Create detailed story
claude create-story user-authentication

# Validate story completeness  
claude validate-story user-authentication

# Implement with complete context
# (Claude reads story file for full context)
```

### 3. Track Story Progress
```bash
# See all stories
claude story-list

# Check completion status
claude story-status
```

## 🔥 When You Need Full BMAD (Complex Projects)

### Upgrade Current Project
```bash
cd my-complex-project
claude bmad-full-setup
```

**This adds:**
- ✅ Complete 43-file BMAD system
- ✅ 10 specialized agents (Analyst, PM, Architect, Dev, QA, etc.)
- ✅ Advanced workflows and templates
- ✅ Enterprise-grade documentation system

## 📋 Story-Driven Development Benefits

### Before (Traditional Approach)
```
You: "Add user authentication"
↓
Claude: Codes immediately with limited context
↓
Result: Basic implementation, missing edge cases
```

### After (Story-Driven Approach)  
```
You: "Add user authentication"
↓  
You: "claude create-story user-authentication"
↓
Claude: Creates comprehensive story with:
  - Business requirements
  - Technical specifications
  - Implementation details
  - Definition of Done
  - Testing requirements
↓
You: Review and approve story
↓
Claude: Implements with complete context
↓
Result: Professional, production-ready implementation
```

## 🎯 Real-World Usage Examples

### Example 1: Simple Feature
```bash
# Create story
claude create-story password-reset

# Claude creates detailed story file
# You review and approve

# Implement
"Implement the password-reset story"
# Claude uses complete story context
```

### Example 2: Complex Feature
```bash
# Create epic-level story
claude create-story subscription-management

# Break into smaller stories if needed
claude create-story subscription-signup
claude create-story subscription-billing  
claude create-story subscription-cancellation

# Validate all stories
claude validate-story subscription-signup
# etc.

# Implement systematically
```

## 🔄 Integration with Your Existing Workflow

**All your existing commands still work:**
- `claude validate` - Quality checks
- `claude security-scan` - Security validation
- `claude primer` - Project context
- `claude backup` - Git operations

**Enhanced with story support:**
- Stories provide context for better validation
- Security scans include story-based requirements
- Quality checks validate against story Definition of Done

## 🚀 Migration Guide

### For Existing Projects
```bash
# Add story structure to existing project
mkdir -p docs/stories docs/validation docs/templates

# Copy story template from foundation
cp ~/Claude/agents/story-writer.md .claude/agents/
cp ~/Claude/agents/product-owner.md .claude/agents/

# Create first story for next feature
claude create-story next-feature-name
```

### For New Projects
Just use `claude new-project` as normal - story-driven development is now the default!

## 📚 Key Concepts

### Story Files Are Self-Contained
- Complete business context
- Technical requirements
- Implementation guidance  
- Definition of Done
- No external dependencies

### Stories Eliminate Context Loss
- Close Claude → Reopen → Story file has everything
- No need to re-explain requirements
- Consistent implementation quality

### Stories Scale with Project Complexity
- Simple projects: Basic stories
- Complex projects: Upgrade to full BMAD
- Enterprise projects: Complete agent teams

Your foundation now provides professional-grade development workflow while maintaining the flexibility and ease-of-use you're accustomed to.