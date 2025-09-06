# BMAD Context Management System

## Agent-to-Agent Context Handoffs

### Purpose
Replace conversation-based handoffs with structured context files to reduce token usage and improve agent communication clarity.

### Directory Structure
```
.claude/context/
├── analyst-to-pm.md          # Analyst findings for PM
├── pm-to-ux.md              # PRD summary for UX Expert
├── ux-to-architect.md       # UX requirements for Architect
├── architect-to-dev.md      # Technical specs for Dev
├── dev-to-qa.md            # Implementation notes for QA
├── qa-to-pm.md             # Validation results for PM
└── current-context.md       # Active context summary
```

### Context File Template
```markdown
# Context Handoff: {Source Agent} → {Target Agent}

## Summary
Brief summary of completed work and key decisions

## Key Outputs
- Primary deliverable created
- Important decisions made
- Technical constraints identified

## Context for Next Agent
- Specific requirements for next phase
- Dependencies or blockers
- Success criteria

## Reference Files
- Links to created documents
- External resources used
- Related context files

## Next Actions
- Recommended next steps
- Specific questions for next agent
- Validation requirements
```

### Agent Integration
Each BMAD agent should:
1. **Read context file** from previous agent on activation
2. **Write context file** for next agent before completion
3. **Reference context** in decision making
4. **Update current-context.md** with progress

### Token Efficiency
- Context files replace lengthy conversation summaries
- Agents load only relevant context
- Structured format ensures consistent information transfer
- Reduces repeated explanations between agents

### Implementation in Workflow
```bash
# Agent reads previous context
@pm
# PM reads: .claude/context/analyst-to-pm.md

# Agent writes next context  
*create-prd
# PM writes: .claude/context/pm-to-ux.md

# Next agent continues chain
@architect
# Architect reads: .claude/context/ux-to-architect.md
```

### Benefits
- ✅ Cleaner agent handoffs
- ✅ Reduced token usage in conversations
- ✅ Better context preservation
- ✅ Structured information transfer
- ✅ Audit trail of agent decisions