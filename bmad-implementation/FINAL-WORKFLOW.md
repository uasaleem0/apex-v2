# Enhanced BMAD: Complete Workflow Guide

## Project Initialization

### 1. Start New Project
```bash
# Create project directory and structure
mkdir my-project && cd my-project
bmad init-validation                    # Initialize lean checkpointing system
```

### 2. Agent Loading Pattern
```bash
# Load any agent:
@agent-name                            # Example: @analyst, @pm, @architect
# Agent shows available commands automatically
# Use agent-specific commands with * prefix
```

## Core Planning Phase (Web UI Environment)

### 3. Research & Discovery
```bash
@analyst
*create-project-brief                  # Creates project-brief.md
# Save to: docs/project-brief.md
```

### 4. Product Requirements
```bash
@pm  
*create-prd                           # Creates prd.md from project-brief.md
# Save to: docs/prd.md
```

### 5. UX Specification
```bash
@ux-expert
*create-front-end-spec                # Creates front-end-spec.md
# Save to: docs/front-end-spec.md
```

### 6. Technical Architecture
```bash
@architect
*create-fullstack-architecture        # Creates fullstack-architecture.md
# Save to: docs/fullstack-architecture.md
```

### 7. Validation & Approval
```bash
@po
*validate-requirements                # Validates all artifacts
# If issues found: return to relevant agent, fix, re-save
# When complete: ready for story generation
```

## Story Management Phase

### 8. Story Generation
```bash
@sm
*create-stories-from-prd             # Generate stories from PRD + Architecture
# Creates individual story files in docs/stories/
bmad checkpoint story-001             # Checkpoint each story after creation
bmad checkpoint story-002
# Continue for all stories
```

### 9. Story Prioritization
```bash
@sm
*story-prioritization                # Rank stories by priority
*dependency-mapping                  # Map story dependencies
bmad project-status                  # Review overall project status
```

## Development Phase (IDE Environment)

### 10. Story Implementation Loop
**For each story (iterative):**

#### Phase A: Story Start
```bash
@bmad-checkpoint
bmad status story-001                 # Check story current status
bmad resume story-001                 # Resume from last checkpoint (if applicable)
```

#### Phase B: Development Work
```bash
@dev
*implement-story                      # Implement story features
# Work on code, make changes
bmad checkpoint story-001             # Manual checkpoint during work (as needed)
```

#### Phase C: Quality Assurance
```bash
@qa
*create-test-cases                   # Create tests for story
*integration-test-plan               # Integration testing
bmad validate story-001              # Update validation status
bmad checkpoint story-001            # Checkpoint after QA
```

#### Phase D: Story Review
```bash
@pm
*correct-course                      # Review implementation vs requirements
bmad validate story-001              # Final validation
bmad checkpoint story-001            # Final story checkpoint
```

#### Phase E: Story Completion
```bash
@bmad-checkpoint
bmad story-health story-001          # Final health check
bmad project-status                  # Update overall progress
# Move to next story
```

### 11. Story Completion Tracking
```bash
# Check project progress anytime:
bmad project-status                   # Overall project health
bmad story-health <story-id>          # Individual story health

# Recovery from interruptions:
bmad resume <story-id>                # Resume any story from last checkpoint
bmad recovery-options <story-id>      # Show available recovery points
```

## Project Completion

### 12. Final Validation
```bash
@qa
*quality-gates                       # Final quality validation
@po  
*validate-requirements               # Final stakeholder validation
bmad project-status                  # Confirm all stories complete
```

### 13. Project Handoff
```bash
@bmad-orchestrator
*workflow-status                     # Complete workflow status
# All documents in docs/ folder ready for handoff
```

## Iterative Loops & Recovery

### Story Development Loop (Repeatable)
```
1. bmad resume <story-id>            # Start/resume story
2. @dev → implement features         # Development work  
3. bmad checkpoint <story-id>        # Save progress
4. @qa → test story                  # Quality assurance
5. bmad validate <story-id>          # Validation check
6. bmad checkpoint <story-id>        # Final checkpoint
7. Repeat for next story
```

### Recovery from Interruptions
```
# Connection lost or session interrupted:
1. bmad project-status               # See overall state
2. bmad status <current-story>       # Check current story status  
3. bmad resume <current-story>       # Resume from last checkpoint
4. Continue from interrupted point
```

### Validation Failure Loop
```
1. bmad validate <story-id>          # Run validation
2. If fails: shows specific issues
3. Address blockers/issues
4. bmad validate <story-id>          # Re-validate
5. bmad checkpoint <story-id>        # Checkpoint when passes
```

## Command Reference Summary

### Project Management
- `bmad init-validation` - Initialize project
- `bmad project-status` - Overall project health
- `bmad story-health <id>` - Story health check

### Story Workflow  
- `bmad checkpoint <id>` - Manual checkpoint (50 tokens)
- `bmad status <id>` - Story status (30 tokens)
- `bmad resume <id>` - Resume from checkpoint
- `bmad validate <id>` - Validation check (40 tokens)
- `bmad recovery-options <id>` - Recovery points

### Agent Commands
- `@agent-name` - Load specific agent
- `*command` - Execute agent command
- `*help` - Show agent commands

## File Structure Output
```
my-project/
├── docs/
│   ├── project-brief.md
│   ├── prd.md  
│   ├── front-end-spec.md
│   ├── fullstack-architecture.md
│   └── stories/
│       ├── story-001.md
│       └── story-002.md
├── validation/
│   ├── project-status.json
│   └── stories/
│       ├── story-001/
│       │   ├── status.json
│       │   ├── recovery.json
│       │   └── validation.json
│       └── story-002/
│           ├── status.json
│           ├── recovery.json
│           └── validation.json
└── src/ (implementation files)
```

## Key Workflow Principles
- **Planning Phase**: Web UI environment for document creation
- **Development Phase**: IDE environment for story implementation  
- **Story-by-Story**: Complete one story before starting next
- **Checkpoint Protection**: Manual checkpointing prevents data loss
- **Lean Efficiency**: <1,500 tokens total project overhead
- **Recovery Ready**: Resume from any interruption point