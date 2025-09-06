# Bundle Management System

**Purpose**: Manage story bundles, sprint switching, and parallel development workflow.

## Core Commands

### Bundle Navigation
- `/status` - Complete project status dashboard
- `/bundles` - List all bundles and their current status  
- `/bundle [A/B/C]` - Switch to specific bundle context
- `/bundle current` - Show current active bundle

### Sprint Management
- `/sprint status` - Current sprint status across all bundles
- `/sprint switch [bundle]` - Switch to different bundle's active sprint
- `/sprint history` - Show completed sprints across all bundles

### Review & Feedback
- `/review [bundle]` - Start user review process for completed bundle
- `/review status` - Show bundles waiting for user review
- `/feedback [bundle]` - Continue previous review session

### Feature Addition
- `/add-feature "description"` - Add new feature with automatic workflow routing

## Implementation Architecture

### Bundle State Management
```yaml
bundle_structure:
  bundle_id: "A/B/C/D..."
  name: "descriptive_name"
  stories: [list_of_story_ids]
  status: "planning/developing/review_ready/complete"
  dependencies: [other_bundle_ids]
  current_sprint: "1.1/1.2/1.3..."
  
bundle_states:
  planning: "Winston analyzing dependencies"
  developing: "Stories in dev/UI/QA cycle"  
  review_ready: "All stories technically complete, awaiting user review"
  user_feedback: "User reviewing and providing feedback"
  implementing_changes: "Developers implementing user feedback"
  complete: "User approved, ready for deployment"
```

### Story Lifecycle Tracking
```yaml
story_status:
  created: "PM created story"
  architected: "Winston defined technical approach"
  ui_specified: "Sally created UI specification"
  developing: "Developer implementing"
  ui_validating: "Sally running Playwright validation"
  ui_feedback: "Sally provided feedback to developer"
  ui_complete: "Sally approved UI implementation"
  technical_testing: "Enhanced QA running tests"
  technical_complete: "QA approved functionality"
  ready_for_review: "Both UI and technical complete"
  user_reviewing: "User providing feedback"
  user_changes_needed: "User requested changes"
  complete: "User approved story"
```

### Context Switching Logic
```yaml
context_management:
  current_bundle: "tracks active bundle context"
  background_bundles: "tracks other bundle progress"
  notification_system: "alerts when bundles ready for attention"
  priority_queue: "manages what needs user attention first"
```

## Integration with BMAD Agents

### Agent Context Handoffs
```yaml
workflow_integration:
  pm_to_architect: "Stories → Architecture analysis → Bundle creation"
  architect_to_ux: "Technical constraints → UI specification per story"
  ux_to_developer: "UI specs → Implementation requirements"
  developer_to_ux: "Implementation → Playwright validation"
  ux_to_qa: "UI approved → Technical testing"
  qa_to_user: "All testing complete → User review"
```

### Parallel Bundle Support
```yaml
parallel_execution:
  independent_bundles: "Can run simultaneously"
  dependent_bundles: "Sequential execution required"
  resource_management: "Agent availability across bundles"
  progress_tracking: "Individual bundle progress monitoring"
```

## Command Execution Flow

### Status Dashboard (`/status`)
1. Read all bundle states from project files
2. Identify bundles needing user attention
3. Show progress across all active bundles  
4. Provide next action recommendations
5. Display in clean, actionable format

### Bundle Switching (`/bundle B`)
1. Save current bundle context
2. Load target bundle context
3. Show bundle-specific status
4. Present available actions for that bundle
5. Update global context tracking

### Review Process (`/review B`)
1. Validate bundle is ready for review
2. Present all completed stories for bundle
3. Enable feedback collection and categorization
4. Route feedback to appropriate agents
5. Track review completion status

## File Structure
```
.claude/
├── bundle-states/
│   ├── bundle-A.json
│   ├── bundle-B.json
│   └── bundle-C.json
├── sprint-history/
│   ├── bundle-A-sprints.json
│   └── bundle-B-sprints.json
├── user-feedback/
│   ├── bundle-A-feedback.json
│   └── pending-reviews.json
└── project-status.json
```

## Success Metrics
- Instant bundle switching (< 2 seconds)
- Clear status visibility across all bundles
- Zero context loss between bundle switches
- Efficient parallel bundle management
- Seamless user review and feedback integration