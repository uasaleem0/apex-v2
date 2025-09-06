# Project Status Dashboard

**Usage**: `/status`

**Purpose**: Comprehensive project overview showing all bundles, stories, and next actions.

## Dashboard Layout

### Project Overview Section
```yaml
project_metrics:
  total_stories: count
  completed_stories: count  
  in_progress_stories: count
  pending_stories: count
  deployment_ready_bundles: count
```

### Active Bundles Section
```yaml
bundle_display:
  bundle_id: "A/B/C/D"
  bundle_name: "User System/Content System/Payment System"
  status: "Complete/Review Ready/In Progress/Planning"
  progress_percentage: "0-100%"
  last_activity: "timestamp"
  next_action: "specific_action_required"
  priority_level: "high/medium/low"
```

### Your Next Actions Section
```yaml
action_items:
  high_priority:
    - Bundle review ready
    - Critical feedback needed
    - Architecture decisions pending
  
  medium_priority:
    - Progress check recommended  
    - Optional review available
    - Feature addition opportunities
  
  low_priority:
    - Background development progressing
    - Monitoring recommended
    - Future planning available
```

### Quick Commands Section
```yaml
available_commands:
  immediate_actions:
    - "/review [bundle]" - Review completed work
    - "/bundle [id]" - Switch to specific bundle
    - "/add-feature" - Add new functionality
  
  information_commands:
    - "/bundles" - Detailed bundle information
    - "/sprint status" - Development progress
    - "/agents" - Agent activity status
```

## Status Logic

### Bundle Status Determination
```yaml
status_calculation:
  complete: "All stories user-approved and deployed"
  review_ready: "All stories technically complete, awaiting user review"
  in_progress: "Stories in development/testing cycle"
  planning: "Architecture analysis in progress"
  blocked: "Waiting for user decisions or external dependencies"
```

### Priority Assessment
```yaml
priority_logic:
  high_priority:
    - Bundles ready for user review
    - Blocked development waiting for decisions
    - Critical issues requiring attention
  
  medium_priority:
    - Normal development progress
    - Optional review opportunities
    - Feature enhancement possibilities
  
  low_priority:
    - Background development progressing normally
    - Future planning opportunities
    - Informational updates
```

### Notification Intelligence
```yaml
smart_notifications:
  new_since_last_check:
    - Recently completed bundles
    - New issues requiring attention
    - Development milestone achievements
  
  overdue_items:
    - Reviews pending beyond target time
    - Blocked development items
    - Delayed deliverables
  
  upcoming_items:
    - Bundles approaching review readiness
    - Scheduled development activities
    - Planning sessions needed
```

## Implementation Details

### Data Sources
```yaml
information_gathering:
  bundle_states: "Read from .claude/bundle-states/*.json"
  story_progress: "Read from individual story tracking files"
  agent_activity: "Query active agent sessions and recent work"
  user_history: "Track user's last actions and pending items"
  deployment_status: "Integration with deployment tracking"
```

### Display Intelligence
```yaml
adaptive_display:
  context_aware: "Highlight most relevant information based on recent activity"
  progressive_detail: "Show summary by default, detailed view on request"
  action_oriented: "Focus on what user can/should do next"
  time_sensitive: "Prioritize time-critical items"
```

### Integration Points
```yaml
system_integration:
  agent_coordination: "Show which agents are active/available"
  development_tracking: "Real-time progress from development activities"
  quality_assurance: "Testing status and results"
  deployment_pipeline: "Production deployment status"
```

## Sample Output Format

```
┌─────────────────────────────────────────────────────────────────┐
│                    PROJECT STATUS DASHBOARD                    │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  📊 PROJECT OVERVIEW                                            │
│  ├─ Total Stories: 15 | Completed: 8 | In Progress: 4         │
│  └─ Bundles: 3 active | 1 complete | 2 in development         │
│                                                                 │
│  🔔 HIGH PRIORITY - NEEDS YOUR ATTENTION                       │
│  ┌─────────────────────────────────────────────────────────┐    │
│  │ Bundle B: Content System (AWAITING YOUR REVIEW)        │    │
│  │ ├─ Stories 4-7: All technically complete               │    │
│  │ ├─ Ready since: 2 hours ago                            │    │
│  │ └─ Estimated review time: 30 minutes                   │    │
│  │ Action: /review B                                      │    │
│  └─────────────────────────────────────────────────────────┘    │
│                                                                 │
│  🔄 IN PROGRESS                                                 │
│  ┌─────────────────────────────────────────────────────────┐    │
│  │ Bundle C: Payment System (75% complete)                │    │
│  │ ├─ Story 8: UI validation in progress                  │    │
│  │ ├─ Story 9: Development in progress                    │    │
│  │ └─ Story 10: Waiting for Story 9                       │    │
│  │ Status: Normal progress                                │    │
│  └─────────────────────────────────────────────────────────┘    │
│                                                                 │
│  ✅ COMPLETED                                                   │
│  ┌─────────────────────────────────────────────────────────┐    │
│  │ Bundle A: User System (SHIPPED TO PRODUCTION)          │    │
│  │ └─ All 3 stories live and functioning                  │    │
│  └─────────────────────────────────────────────────────────┘    │
│                                                                 │
│  ⚡ QUICK ACTIONS                                                │
│  • /review B - Review Bundle B (HIGH PRIORITY)                 │
│  • /bundle C - Check Bundle C progress                         │
│  • /add-feature - Add new feature to system                    │
│  • /bundles - Detailed view of all bundles                     │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

## Performance Requirements
- Load time: < 2 seconds
- Data freshness: Real-time agent activity
- Responsive design: Clean display in terminal
- Smart caching: Avoid redundant data fetching