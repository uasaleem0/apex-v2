# Enhanced BMAD Commands

## How to Use Enhanced BMAD with Lean Checkpointing

### 1. Start a New Project
```bash
# Create project structure following greenfield-fullstack.yaml
bmad new-project <project-name>
bmad init-validation  # Initialize lean checkpointing system
```

### 2. Follow the Workflow Sequence
Based on `greenfield-fullstack.yaml`:

**Step 1: Analyst Agent**
```bash
# Load the analyst agent
@analyst
# Run commands:
*create-project-brief
```

**Step 2: PM Agent** 
```bash
# Load the PM agent
@pm  
# Run commands:
*create-prd
```

**Step 3: UX Expert Agent**
```bash
# Load UX expert
@ux-expert
# Run commands:
*create-front-end-spec
```

**Step 4: Architect Agent**
```bash
# Load architect
@architect
# Run commands: 
*create-fullstack-architecture
```

**Step 5: Product Owner Validation**
```bash
# Load product owner
@po
# Validate all artifacts
```

**Step 6: Story Creation**
```bash
# Load scrum master  
@sm
# Generate stories from PRD + Architecture
```

**Step 7: Development (Enhanced with Checkpointing)**
```bash
# Load dev agent
@dev
# For each story:
bmad resume <story-id>          # Resume from checkpoint
# Implement story features
bmad checkpoint <story-id>      # Save progress periodically
bmad validate <story-id>        # Validate at milestones
```

## Enhanced Checkpoint Commands
```bash
bmad checkpoint <story-id>      # Manual checkpoint (50 tokens)
bmad status <story-id>          # Story status (30 tokens)
bmad resume <story-id>          # Resume from checkpoint
bmad validate <story-id>        # Validation check (40 tokens)
bmad project-status            # Overall status (20 tokens)
bmad story-health <story-id>    # Health check
```

## Agent Loading
Each agent should be loaded using the exact agent definition files in `agents/` directory.
- **New**: `@bmad-checkpoint` - Checkpoint & recovery management

## Document Chain
- project-brief.md → prd.md → front-end-spec.md → fullstack-architecture.md → stories
- **Enhanced**: `validation/` directory with lean status tracking

## Key Principles
- Follow exact workflow sequence from `greenfield-fullstack.yaml`
- Use lean checkpointing for data loss prevention (<1,500 tokens overhead)
- Work story-by-story with checkpoint protection