# BMAD Commands

## How to Use Original BMAD

### 1. Start a New Project
```bash
# Create project structure following greenfield-fullstack.yaml
bmad new-project <project-name> 
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

**Step 7: Development**
```bash
# Load dev agent
@dev
# Implement stories iteratively
```

## Agent Loading
Each agent should be loaded using the exact agent definition files in `agents/` directory.

## Document Chain
- project-brief.md → prd.md → front-end-spec.md → fullstack-architecture.md → stories

## Key Principle
Follow the exact workflow sequence from `greenfield-fullstack.yaml` with no modifications.