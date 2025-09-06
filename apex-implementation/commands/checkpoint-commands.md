# Enhanced BMAD Checkpoint Commands

## Core Checkpoint Commands

### bmad checkpoint <story-id>
**Purpose**: Create manual checkpoint for story
**Token Cost**: ~50 tokens (write status.json + recovery.json)
**Usage**: `bmad checkpoint story-001`
**Creates**:
- `validation/stories/story-001/status.json`
- `validation/stories/story-001/recovery.json`
- Updates `validation/project-status.json`

### bmad status <story-id>
**Purpose**: Show current story status
**Token Cost**: ~30 tokens (read status.json)
**Usage**: `bmad status story-001`
**Displays**: Current phase, status, next action, blockers

### bmad resume <story-id>
**Purpose**: Resume story from last checkpoint
**Token Cost**: ~30 tokens (read recovery.json) + load referenced files as needed
**Usage**: `bmad resume story-001`
**Process**: 
1. Read recovery.json
2. Load referenced story section
3. Show resume context
4. Ready for continuation

### bmad validate <story-id>
**Purpose**: Run validation check and update validation.json
**Token Cost**: ~40 tokens (write validation.json)
**Usage**: `bmad validate story-001`
**Updates**: Validation status, checks, blockers

### bmad project-status
**Purpose**: Show overall project health
**Token Cost**: ~20 tokens (read project-status.json)
**Usage**: `bmad project-status`
**Shows**: Total stories, completion stats, current story

## Advanced Commands

### bmad story-health <story-id>
**Purpose**: Comprehensive story health check
**Token Cost**: ~70 tokens (read all story validation files)
**Usage**: `bmad story-health story-001`
**Checks**: Status, validation, blockers, file changes

### bmad recovery-options <story-id>
**Purpose**: Show available recovery points
**Token Cost**: ~30 tokens (scan checkpoint history)
**Usage**: `bmad recovery-options story-001`
**Lists**: Available checkpoints, recovery points, rollback options

### bmad init-validation
**Purpose**: Initialize validation structure for new project
**Token Cost**: ~50 tokens (create directory structure + project-status.json)
**Usage**: `bmad init-validation`
**Creates**: Complete validation directory structure

## Integration with BMAD Agents

### For Dev Agent
```bash
# Before starting implementation:
bmad checkpoint story-001

# During development (periodically):
bmad checkpoint story-001

# After major milestone:
bmad validate story-001
```

### For QA Agent
```bash
# Before testing:
bmad status story-001

# After testing:
bmad validate story-001
bmad checkpoint story-001
```

### For PM Agent
```bash
# Review project status:
bmad project-status

# Check story health:
bmad story-health story-001
```

## Command Flow Integration

### BMAD Workflow Enhancement
```
1. Analyst creates project-brief.md
   └── bmad init-validation

2. PM creates prd.md and stories
   └── bmad checkpoint <each-story>

3. For each story implementation:
   a. bmad resume <story-id>
   b. Dev/QA work on story  
   c. bmad checkpoint <story-id> (periodically)
   d. bmad validate <story-id> (at milestones)

4. Project completion:
   └── bmad project-status (final report)
```

## Error Recovery

### Connection Lost During Story Work
```bash
# When reconnecting:
bmad resume story-001
# → Shows last checkpoint, next action, context
# → Loads referenced files as needed
# → Ready to continue where left off
```

### Validation Failures
```bash
bmad validate story-001
# → Shows specific failed checks
# → Lists blockers to resolve
# → Tracks resolution progress
```

## Token Efficiency Notes

- Commands read only necessary files
- Status updates write minimal changes
- Recovery loads files on-demand
- No background processing or automatic saves
- Maximum overhead: <1,500 tokens for full project