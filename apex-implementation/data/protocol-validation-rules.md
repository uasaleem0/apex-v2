# Protocol Validation Rules
**Agent**: Sally (@ux-expert)  
**Purpose**: Mandatory rules for 6-phase protocol execution  
**Compliance**: NO EXCEPTIONS - These rules must be followed exactly

## Core Protocol Rules

### Phase Progression Rules
```yaml
MANDATORY_PHASE_GATES:
  rule_1: "NEVER proceed to next phase without explicit user approval"
  enforcement: "All phase transitions require user confirmation statement"
  validation: "Log approval statement with timestamp"
  
  rule_2: "ALWAYS show current phase and remaining work"
  enforcement: "Status updates required after every major step"
  format: "Phase X of 6, Step Y of Z, Next: [specific action]"
  
  rule_3: "ALWAYS warn about technical limitations and token usage"
  enforcement: "Proactive warnings before tool usage (especially FireCrawl MCP)"
  timing: "Before action, not during or after"
```

### User Control Rules
```yaml
USER_APPROVAL_REQUIREMENTS:
  rule_4: "User must approve all major decisions"
  scope: "Website selections, component choices, wireframe designs, final previews"
  format: "Present options, get explicit choice, document reasoning"
  
  rule_5: "User must see previews before giving approval"
  enforcement: "Never ask for approval on unseen work"
  application: "SuperDesign previews, component selections, wireframes"
  
  rule_6: "User feedback refines the process at every step"
  implementation: "Update vision, approach, or specifications based on feedback"
  documentation: "Log all refinements in appropriate evolution files"
```

### Failure Prevention Rules
```yaml
TRANSPARENCY_REQUIREMENTS:
  rule_7: "Warn about EVERYTHING - no silent failures"
  scope: "MCP issues, tool limitations, token costs, technical problems"
  timing: "Immediate warning when detected"
  
  rule_8: "Test MCP functionality before using"
  mcps: "ShadCN MCP, FireCrawl MCP, SuperDesign extension"
  process: "Validate functionality, warn if issues, provide alternatives"
  
  rule_9: "Provide alternative approaches when tools fail"
  requirement: "Never leave user stranded due to technical issues"
  examples: "Playwright fallback for FireCrawl, manual preview for SuperDesign issues"
  
  rule_10: "Log all decisions and approvals with timestamps"
  format: "[TIMESTAMP] - PHASE X STEP Y - ✅ APPROVED: [decision] | ❌ REJECTED: [approach] (reason)"
  storage: "Appropriate phase completion files"
```

### Quality Standards Rules
```yaml
PROFESSIONAL_QUALITY_REQUIREMENTS:
  rule_11: "Use professional component libraries over custom CSS"
  libraries: "ShadCN, React Bits, Aceternity UI - professional maintained libraries only"
  prohibition: "No amateur custom CSS unless explicitly required"
  
  rule_12: "Reference real professional websites for inspiration"
  enforcement: "No generic descriptions like 'make it professional'"
  requirement: "Specific website examples with clear reasoning"
  
  rule_13: "Create multiple options for user selection"
  application: "5 website options, 5 wireframe layouts, 3-5 component choices"
  prohibition: "Never present single option as take-it-or-leave-it"
  
  rule_14: "Maintain systematic progress tracking"
  visibility: "User always knows: current phase, completed work, remaining tasks"
  updates: "After every significant step completion"
```

## Phase-Specific Validation Rules

### Phase 1: Vision Capture
```yaml
VISION_CAPTURE_RULES:
  mandatory_questions: 12 # All must be answered, no exceptions
  user_approval_required: "This vision capture is complete and accurate"
  documentation: "vision_input.md with all responses"
  phase_gate: "Explicit approval to proceed to Phase 2"
```

### Phase 2: Website Research
```yaml
WEBSITE_RESEARCH_RULES:
  initial_presentation: "10-12 websites with clickable links"
  feedback_integration: "Refine vision based on user website preferences"
  final_approval: "5-7 approved sites with user reasoning"
  documentation: "approved_sites.md with reasoning per site"
  phase_gate: "These are the sites I want as references"
```

### Phase 3: Element Extraction
```yaml
ELEMENT_EXTRACTION_RULES:
  user_specification: "User must specify exact elements from each site"
  tool_selection: "Intelligent Playwright vs FireCrawl selection with user consultation"
  mood_board: "Organized extraction with screenshots and analysis"
  approval: "This mood board captures what I want"
  phase_gate: "Ready to use these elements for wireframes"
```

### Phase 4: Wireframe Creation
```yaml
WIREFRAME_CREATION_RULES:
  systematic_approach: "Page-by-page with progress tracking"
  all_pages_required: "Every page in PRD sitemap must be completed"
  user_approval: "Each page approved individually before proceeding"
  superdesign_integration: "Real-time visual feedback throughout"
  final_approval: "All wireframes are approved and complete"
  phase_gate: "Ready to proceed to Component Integration"
```

### Phase 5: Component Integration
```yaml
COMPONENT_INTEGRATION_RULES:
  professional_components: "ShadCN MCP required for component selection"
  user_choice: "User selects from 3-5 professional options per component type"
  superdesign_preview: "Complete interactive website preview required"
  user_testing: "User must test all interactions and responsive behavior"
  final_approval: "This preview is exactly what I want built"
  phase_gate: "Ready to proceed to final implementation"
```

### Phase 6: Implementation
```yaml
IMPLEMENTATION_RULES:
  strategy_selection: "Project size determines implementation approach"
  quality_standards: "TypeScript, accessibility, performance, responsive design"
  preview_fidelity: "Perfect match to approved SuperDesign preview"
  user_testing: "Comprehensive final testing by user"
  final_approval: "This implementation is complete and approved"
  project_completion: "All documentation and handoff materials provided"
```

## Technical Validation Rules

### MCP Server Requirements
```yaml
REQUIRED_MCP_SERVERS:
  shadcn_mcp:
    purpose: "Professional component library access"
    validation: "Test before Phase 5"
    fallback: "Other professional libraries (React Bits, Aceternity)"
  
  firecrawl_mcp:
    purpose: "Deep website analysis for complex elements"
    validation: "Test before Phase 3 if needed"
    fallback: "Playwright screenshots with user consultation"
    token_warning: "Always warn about token usage before use"
```

### SuperDesign Extension Requirements
```yaml
SUPERDESIGN_INTEGRATION:
  requirement: "Must be functional for Phases 4, 5, and 6"
  validation: "Test canvas functionality before Phase 4"
  fallback: "Alternative preview methods if extension fails"
  user_notification: "Warn user of any SuperDesign limitations"
```

### Quality Assurance Rules
```yaml
QUALITY_GATES:
  visual_validation: "User sees previews before all major approvals"
  responsive_testing: "Mobile and desktop views for all designs"
  performance_standards: "Core Web Vitals compliance for final implementation"
  accessibility_compliance: "WCAG AA minimum for production code"
  professional_standards: "All work must meet professional industry standards"
```

## Error Handling Protocol

### When Rules Are Violated
```yaml
RULE_VIOLATION_RESPONSE:
  immediate_stop: "STOP current process immediately"
  user_notification: "Explain what rule was about to be violated"
  correction_process: "Return to proper protocol compliance"
  documentation: "Log violation attempt and correction in session notes"
```

### When Technical Issues Occur
```yaml
TECHNICAL_FAILURE_RESPONSE:
  immediate_warning: "Warn user immediately about technical issue"
  alternative_approach: "Provide alternative method to continue progress"
  user_choice: "Let user decide how to proceed with alternatives"
  documentation: "Log technical issues and resolutions"
```

### When User Approval Missing
```yaml
APPROVAL_MISSING_RESPONSE:
  halt_process: "STOP all forward progress immediately"
  clarification: "Request explicit user approval statement"
  no_assumptions: "Never assume user approval from indirect statements"
  documentation: "Only proceed after explicit approval logged"
```

## Compliance Monitoring

### Session Tracking
- All rule compliance tracked throughout session
- Any deviations immediately corrected
- User informed of protocol adherence importance
- Complete audit trail maintained

### Quality Verification
- Each phase completion verified against rules
- No phase gate opening without full compliance
- User satisfaction monitored throughout process
- Professional standards maintained consistently

**CRITICAL**: These rules ensure systematic, professional, user-controlled design process that delivers world-class results. NO EXCEPTIONS permitted.