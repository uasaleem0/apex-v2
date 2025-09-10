# Smart Session Continuity System
**Agent**: Sally (@ux-expert)  
**Purpose**: Intelligent session management and project continuity across multiple Claude sessions
**Type**: Smart checkpointing with decision evolution tracking

## Session Continuity Architecture

### Core Principle
**Preserve critical context and decision reasoning across sessions while maintaining efficiency.**

### Smart Checkpointing Strategy
```yaml
CHECKPOINT_PHILOSOPHY:
  what_to_preserve: "Critical decisions, approved elements, rejected approaches, reasoning"
  what_to_exclude: "Redundant process steps, obvious information, temporary states"
  when_to_checkpoint: "Phase completions, major decisions, user approvals, session breaks"
  
EFFICIENCY_FOCUS:
  smart_compression: "Store decisions and reasoning, not full conversation logs"
  context_relevance: "Only preserve information needed for future decisions"  
  progressive_refinement: "Update understanding based on new insights"
```

## Session Memory Structure

### Project Session File Format
```yaml
SESSION_FILE_LOCATION: ".claude/sessions/[project-name]/sally-[date].md"

MEMORY_STRUCTURE:
  project_metadata:
    project_name: "Current project identifier"
    company_context: "Discovered company data and brand assets"
    industry_context: "Applied industry requirements and standards"
    session_history: "Previous sessions with key outcomes"
    
  phase_progress:
    current_phase: "Phase X of 6 with specific step"
    completed_phases: "Summary of approved outcomes per phase"
    pending_approvals: "Outstanding decisions waiting for user input"
    next_actions: "Specific next steps for session continuation"
    
  design_evolution:
    approved_elements: "User-approved designs, components, approaches"
    rejected_approaches: "What was tried and why it didn't work"
    decision_reasoning: "Why specific choices were made"
    quality_benchmarks: "Reference sites and standards being applied"
    
  context_state:
    vision_capture: "Completed vision with user approvals"
    research_insights: "Approved reference sites and mood board elements"
    wireframe_decisions: "Page-by-page wireframe approvals and reasoning"
    component_selections: "Professional component choices with customizations"
    brand_applications: "How company brand assets are being applied"
```

### Decision Evolution Tracking
```yaml
DECISION_MEMORY_PATTERN:
  decision_point: "Specific choice that needed to be made"
  options_considered: "What alternatives were evaluated"
  user_preference: "What the user chose and why"
  outcome_reasoning: "Why this decision supports project goals"
  future_implications: "How this affects subsequent decisions"
  
EXAMPLE_DECISION_LOG:
  wireframe_navigation_approach:
    decision_point: "Homepage navigation pattern selection"
    options_considered: ["Linear minimal sidebar", "Notion horizontal menu", "Stripe centered approach"]
    user_preference: "Linear sidebar - matches company's tool-focused personality"
    outcome_reasoning: "Aligns with SaaS industry standards and company brand personality"
    future_implications: "All pages should use consistent sidebar pattern"
    reference_quality: "Must match Linear's level of sophistication"
```

## Session Restoration Process

### Startup Context Loading
```yaml
SESSION_RESTORATION:
  automatic_detection:
    - Scan for existing session files for current project
    - Load most recent session context automatically
    - Parse phase progress and continuation requirements
    - Restore approved elements and rejected approaches
    
  context_integration:
    - Apply previous decisions to current session context
    - Restore quality benchmarks and reference standards  
    - Reestablish company and industry context
    - Resume from exact continuation point
    
  validation_and_updates:
    - Confirm context accuracy with user if needed
    - Update any changed requirements or preferences
    - Refine understanding based on new information
    - Checkpoint updated context for future sessions
```

### Intelligent Context Compression
```yaml
COMPRESSION_STRATEGY:
  preserve_critical:
    - User approvals and explicit decisions
    - Quality standards and reference benchmarks
    - Brand asset applications and customizations
    - Design reasoning and decision logic
    
  compress_redundant:
    - Process steps (keep outcomes, not detailed steps)
    - Obvious information (industry standards, basic principles)
    - Temporary states (work-in-progress before approval)
    - Repetitive explanations (keep final reasoning)
    
  evolution_tracking:
    - How understanding evolved through sessions
    - What approaches were refined or abandoned
    - Why certain quality standards were established
    - How user preferences became clearer over time
```

## Multi-Session Project Management

### Session Linking and Evolution
```yaml
SESSION_PROGRESSION:
  session_relationship:
    - Link sessions chronologically with outcome summaries
    - Track how each session built on previous work
    - Document major breakthroughs or direction changes
    - Preserve continuity of design evolution
    
  knowledge_accumulation:
    - Build deeper understanding of user preferences
    - Refine quality standards based on feedback patterns
    - Improve context application through learning
    - Enhance prediction of successful approaches
    
  efficiency_improvement:
    - Reduce repetitive questioning in subsequent sessions
    - Apply established patterns to new design challenges
    - Leverage proven approaches for similar decisions
    - Maintain momentum through context preservation
```

### Complex Project Session Management
```yaml
LARGE_PROJECT_CONTINUITY:
  checkpoint_frequency:
    - After each phase completion with user approval
    - Before major design decisions or direction changes
    - At natural breaking points in complex phases
    - When user provides significant feedback or refinements
    
  context_depth:
    - Detailed component selection reasoning for future consistency
    - Brand application patterns for systematic application
    - Quality validation approaches for consistent standards
    - User preference patterns for predictive decision support
    
  progress_visualization:
    status_summary: |
      "📊 PROJECT CONTINUITY STATUS:
      
      ✅ COMPLETED:
      - Phase 1: Vision captured with [key insights]
      - Phase 2: Research completed with [X approved sites]
      - Phase 3: Mood board approved with [key elements]
      
      🎯 CURRENT SESSION:
      - Phase 4: Wireframes - Page X of Y completed
      - Next: Continue with [specific page] using [established pattern]
      
      📝 SESSION CONTEXT:
      - Quality standard: Match [reference sites] sophistication
      - Brand application: [Company] guidelines with [specific customizations]
      - User preferences: Established pattern of [preference patterns]"
```

## Implementation Guidelines

### Session File Management
```yaml
FILE_ORGANIZATION:
  session_naming: "sally-YYYY-MM-DD.md for date-based organization"  
  content_structure: "Standardized YAML frontmatter + markdown content"
  automatic_creation: "Create new session file if none exists"
  intelligent_updating: "Update existing session with new insights and progress"
  
CLEANUP_STRATEGY:
  active_sessions: "Keep current and recent sessions readily accessible"
  archived_sessions: "Compress older sessions to key decisions and outcomes"
  project_completion: "Create final summary with key learnings and outcomes"
```

### Quality Assurance
```yaml
CONTINUITY_VALIDATION:
  context_accuracy: "Verify restored context matches actual project state"
  decision_consistency: "Ensure new decisions align with previous approvals"
  quality_maintenance: "Apply established standards consistently across sessions"
  progress_tracking: "Confirm actual progress matches recorded state"
  
ERROR_RECOVERY:
  context_conflicts: "Resolve discrepancies between sessions and current state"
  missing_information: "Identify and request critical missing context"
  outdated_decisions: "Update decisions based on new requirements or feedback"
  progress_misalignment: "Realign session context with actual project state"
```

## Benefits and Efficiency Gains

### For Users
- No need to re-explain project context or previous decisions
- Consistent quality standards maintained across all sessions
- Faster project progression through preserved context
- Better design outcomes through accumulated understanding

### For System Performance  
- Efficient context loading without full conversation replay
- Smart compression reduces token usage while preserving value
- Progressive refinement improves accuracy over time
- Intelligent checkpointing prevents context loss