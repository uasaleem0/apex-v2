# Enhanced BMAD: Lean Checkpointing & Validation System

## Token-Efficient Design Philosophy
- Event-triggered checkpoints only (NO automatic timers)
- Minimal JSON status files (<50 tokens each)  
- Reference-based recovery (load as-needed)
- Total overhead: <150 tokens per story

## Enhanced Directory Structure
```
project/
├── docs/                           # Original BMAD documents
│   ├── project-brief.md
│   ├── prd.md
│   ├── architecture.md  
│   └── stories/
│       ├── story-001.md
│       └── story-002.md
└── validation/                     # NEW: Lean validation system
    ├── project-status.json         # 20 tokens - overall status
    └── stories/
        ├── story-001/
        │   ├── status.json         # 50 tokens - current state
        │   ├── recovery.json       # 30 tokens - resume data
        │   └── validation.json     # 40 tokens - validation result
        └── story-002/
            ├── status.json
            ├── recovery.json  
            └── validation.json
```

## Enhanced Commands

### Checkpointing Commands
```bash
bmad checkpoint <story-id>          # Manual checkpoint (50 token write)
bmad status <story-id>             # Show story status (30 token read)
bmad resume <story-id>             # Resume from checkpoint (load as-needed)
bmad project-status               # Overall project status (20 token read)
```

### Validation Commands  
```bash
bmad validate <story-id>          # Quick story validation (40 token write)
bmad validate-all                # Validate all stories
bmad story-health <story-id>      # Health check for story
```

## Status File Templates

### status.json (50 tokens max)
```json
{
  "story": "story-001",
  "phase": "implementation",
  "status": "in_progress", 
  "checkpoint": "dev-003",
  "agent": "dev",
  "next": "complete_auth_feature",
  "files": ["auth.js", "auth.test.js"],
  "updated": "2024-09-02T10:30:00Z"
}
```

### recovery.json (30 tokens max)
```json
{
  "resume_from": "story-001.md#implementation",
  "task": "implement user authentication",
  "blockers": [],
  "ready_for": "qa_review",
  "context": "auth_feature_progress"
}
```

### validation.json (40 tokens max)
```json
{
  "status": "pass",
  "phase": "implementation",
  "checks": {
    "requirements": "pass",
    "technical": "pass", 
    "testing": "pending"
  },
  "blockers": [],
  "updated": "2024-09-02T10:30:00Z"
}
```

### project-status.json (20 tokens max)
```json
{
  "total_stories": 5,
  "completed": 2,
  "in_progress": 1,
  "blocked": 0,
  "current_story": "story-003",
  "updated": "2024-09-02T10:30:00Z"
}
```

## Checkpoint Triggers (Event-Based Only)

### ✅ Manual Triggers
- `bmad checkpoint` command
- User-initiated save points
- Before risky operations

### ✅ Milestone Triggers  
- Story phase transitions (Draft → Implementation → Review → Done)
- Agent handoffs (Dev → QA → PM)
- Validation completions

### ❌ NO Automatic Triggers
- NO time-based checkpointing  
- NO background token usage
- NO automatic context saving

## Recovery Strategy

### Reference-Based Recovery (Token Efficient)
1. Read recovery.json (30 tokens)
2. Load referenced story section as-needed
3. Agent reconstructs context from documents
4. Continue from specified checkpoint

### Smart Context Reconstruction
- Agent reads story file + status
- Reconstructs work context from files  
- No stored conversation context needed
- Minimal token overhead for recovery

## Token Budget Analysis

### Per Story Overhead
```
status.json:     50 tokens
recovery.json:   30 tokens  
validation.json: 40 tokens
Total per story: 120 tokens
```

### Project Overhead (10 stories)
```
Story files:        1,200 tokens (10 × 120)
project-status:        20 tokens  
Total overhead:     1,220 tokens
```

**Extremely lean: <1,500 tokens total overhead for typical project**

## Implementation Priority
1. Create enhanced directory structure
2. Add checkpoint commands to BMAD agents  
3. Implement status file generation
4. Add recovery command functionality
5. Test token efficiency in practice

## Integration with Original BMAD
- Preserves all original BMAD functionality
- Adds checkpointing as optional enhancement
- No changes to core agent behavior
- Maintains BMAD workflow compatibility