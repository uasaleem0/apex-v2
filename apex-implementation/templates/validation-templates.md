# BMAD Enhanced Validation Templates

## Directory Structure Template
```
validation/
├── project-status.json                    # Overall project status
└── stories/
    └── {story-id}/
        ├── status.json                    # Story current state
        ├── recovery.json                  # Recovery information
        └── validation.json                # Validation results
```

## JSON Templates (Token-Optimized)

### project-status.json (20 tokens)
```json
{
  "total_stories": 0,
  "completed": 0,
  "in_progress": 0,
  "blocked": 0,
  "current_story": null,
  "updated": "YYYY-MM-DDTHH:mm:ssZ"
}
```

### status.json (50 tokens max)
```json
{
  "story": "story-id",
  "phase": "draft|implementation|review|done",
  "status": "pending|in_progress|blocked|complete",
  "checkpoint": "checkpoint-id",
  "agent": "current-agent",
  "next": "next-action-brief",
  "files": ["file1.js", "file2.js"],
  "updated": "YYYY-MM-DDTHH:mm:ssZ"
}
```

### recovery.json (30 tokens max)
```json
{
  "resume_from": "story-file.md#section",
  "task": "brief-task-description",
  "blockers": [],
  "ready_for": "next-phase|agent",
  "context": "brief-context-key"
}
```

### validation.json (40 tokens max)
```json
{
  "status": "pass|fail|pending",
  "phase": "requirements|design|implementation|testing|complete",
  "checks": {
    "requirements": "pass|fail|pending",
    "technical": "pass|fail|pending",
    "testing": "pass|fail|pending"
  },
  "blockers": [],
  "updated": "YYYY-MM-DDTHH:mm:ssZ"
}
```

## Checkpoint Event Triggers

### Manual Triggers
- `bmad checkpoint <story-id>` command
- User-initiated before risky changes
- Before switching to different story

### Milestone Triggers
- Story phase transitions (draft→implementation→review→done)
- Agent handoffs (dev→qa→pm)
- Validation pass/fail events
- Story completion

### Recovery Usage
- Load recovery.json to get resume point
- Read referenced story file section
- Agent reconstructs context from documents
- Continue from specified checkpoint

## Token Efficiency Guidelines
- Keep all JSON files under specified limits
- Use abbreviations where clear
- Reference files rather than duplicate content
- Update only changed fields
- Compress arrays when possible