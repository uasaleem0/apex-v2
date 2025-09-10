# Context Handoff Pipeline
**Agent**: Sally (@ux-expert)  
**Purpose**: Structured agent-to-agent context transfer system
**Type**: Standardized pipeline with intelligent routing

## Handoff Pipeline Architecture

### Core Principle
**Structured, actionable context transfer that preserves decision reasoning and enables seamless agent transitions.**

### Pipeline Structure
```yaml
HANDOFF_FORMAT:
  metadata: "Agent, timestamp, project context, handoff type"
  context_summary: "Key decisions, approved elements, critical constraints"
  actionable_items: "Specific requirements for receiving agent"
  quality_standards: "Expected outcomes and validation criteria"
  evolution_log: "Decision reasoning and rejected approaches"
```

## Agent-to-Agent Handoff Specifications

### Analyst → UX Expert Handoff
```yaml
ANALYST_TO_UX_CONTEXT:
  file_location: ".claude/context/analyst-to-ux.md"
  
  required_sections:
    project_context:
      - industry_vertical: "Specific industry with context requirements"
      - company_positioning: "Market position and competitive differentiation"
      - target_users: "Primary and secondary user demographics with needs"
      - business_objectives: "Success metrics and conversion goals"
      
    research_insights:
      - competitive_analysis: "Key competitors with specific strengths/weaknesses"
      - market_opportunities: "Identified gaps and positioning advantages"
      - user_journey_mapping: "How users discover, evaluate, and convert"
      - content_strategy: "Key messaging and content hierarchy"
      
    technical_constraints:
      - platform_requirements: "Web, mobile app, or software specifications"
      - performance_expectations: "Speed, accessibility, and compatibility needs"
      - integration_requirements: "APIs, third-party tools, existing systems"
      
    actionable_recommendations:
      - design_priorities: "What UX elements should be emphasized"
      - validation_focus: "Key areas requiring user validation"
      - success_metrics: "How to measure design effectiveness"

  handoff_validation:
    completeness_check: "All required sections populated with specific insights"
    actionability_test: "Recommendations specific enough for design decisions"
    context_preservation: "Decision reasoning documented for future reference"
```

### PM → UX Expert Handoff  
```yaml
PM_TO_UX_CONTEXT:
  file_location: ".claude/context/pm-to-ux.md"
  
  required_sections:
    product_requirements:
      - feature_prioritization: "Core features vs nice-to-have with reasoning"
      - user_stories: "Detailed scenarios with acceptance criteria"
      - success_metrics: "KPIs and measurement methodology"
      - timeline_constraints: "Project phases and delivery expectations"
      
    user_experience_requirements:
      - user_journey_flows: "Step-by-step user interactions and decision points"
      - accessibility_standards: "WCAG level and specific compliance needs"
      - device_requirements: "Mobile, tablet, desktop priorities and constraints"
      - browser_support: "Compatibility requirements and fallback strategies"
      
    business_constraints:
      - brand_guidelines: "Existing brand assets and usage requirements"
      - content_strategy: "Messaging priorities and content hierarchy"
      - conversion_optimization: "Key conversion points and optimization focus"
      - resource_limitations: "Budget, timeline, and capability constraints"
      
    validation_requirements:
      - testing_methodology: "User testing approach and success criteria"
      - stakeholder_approval: "Who needs to approve designs and when"
      - iteration_process: "How feedback will be collected and incorporated"
```

### UX Expert → Build Manager Handoff
```yaml
UX_TO_BUILD_CONTEXT:
  file_location: ".claude/context/ux-to-build.md"
  
  required_sections:
    design_specifications:
      - approved_wireframes: "Complete wireframe collection with approval notes"
      - component_library: "Selected components with customization requirements"
      - design_system: "Colors, typography, spacing, and interaction patterns"
      - responsive_behavior: "Breakpoints and mobile/desktop interaction differences"
      
    technical_requirements:
      - framework_recommendations: "Preferred tech stack with reasoning"
      - performance_targets: "Core Web Vitals and optimization requirements"
      - accessibility_implementation: "Specific WCAG compliance needs and testing"
      - browser_compatibility: "Support requirements and graceful degradation"
      
    interactive_specifications:
      - animation_requirements: "Framer Motion specifications from mood board"
      - form_behavior: "Validation, error handling, and user feedback patterns"
      - navigation_logic: "Menu behavior, responsive navigation, and user flow"
      - loading_states: "How to handle loading, errors, and empty states"
      
    quality_standards:
      - brand_compliance: "How to maintain brand consistency in implementation"
      - professional_benchmarks: "Reference sites for quality comparison"
      - testing_requirements: "Cross-browser, device, and accessibility testing needs"
      - approval_process: "How implementation will be validated and approved"

  implementation_guidance:
    code_quality: "TypeScript, testing, and maintainability requirements"
    deployment_considerations: "Performance, security, and SEO requirements"
    future_scalability: "How design system should be structured for growth"
```

### UX Expert → QA Expert Handoff
```yaml
UX_TO_QA_CONTEXT:
  file_location: ".claude/context/ux-to-qa.md"
  
  required_sections:
    testing_specifications:
      - visual_validation: "Design fidelity requirements and comparison methods"
      - interaction_testing: "All interactive elements and expected behaviors"
      - responsive_validation: "Breakpoint behavior and device-specific requirements"
      - accessibility_testing: "WCAG compliance validation and assistive technology testing"
      
    quality_benchmarks:
      - professional_standards: "Industry-specific quality expectations"
      - reference_comparisons: "Approved reference sites for quality benchmarking"
      - brand_consistency: "Brand guideline compliance validation"
      - user_experience_validation: "User flow testing and usability requirements"
      
    testing_priorities:
      - critical_paths: "Most important user journeys for testing focus"
      - risk_areas: "Potential failure points requiring extra attention"
      - performance_requirements: "Speed and optimization validation needs"
      - cross_platform_needs: "Browser and device compatibility priorities"
```

## Pipeline Implementation

### Handoff Creation Process
```yaml
HANDOFF_GENERATION:
  context_collection:
    - Gather all relevant decisions and reasoning
    - Document approved vs rejected approaches  
    - Note critical constraints and requirements
    - Identify quality standards and success criteria
    
  structured_formatting:
    - Use standardized YAML structure for consistency
    - Include specific, actionable recommendations
    - Preserve decision reasoning for future reference
    - Add validation checkpoints for receiving agent
    
  quality_validation:
    - Completeness check against required sections
    - Actionability validation for receiving agent
    - Context preservation verification
    - Handoff approval by creating agent
```

### Handoff Consumption Process
```yaml
HANDOFF_INTEGRATION:
  startup_loading:
    - Automatically detect and load relevant handoff files
    - Parse context into actionable requirements
    - Integrate constraints into current phase execution
    - Validate context completeness and flag gaps
    
  ongoing_reference:
    - Reference handoff context throughout phase execution
    - Apply quality standards from previous agents
    - Maintain consistency with approved decisions
    - Update context with new insights and decisions
    
  evolution_tracking:
    - Document how handoff context influenced decisions
    - Note any deviations from original recommendations
    - Track context evolution for future handoffs
    - Preserve reasoning for project continuity
```

### Error Handling and Fallbacks
```yaml
MISSING_CONTEXT_HANDLING:
  detection: "Identify missing or incomplete handoff files"
  notification: "Alert user about missing context and potential impact"
  mitigation: "Request context from previous agent or user"
  documentation: "Note context gaps in current phase execution"
  
CONTEXT_CONFLICTS:
  identification: "Detect contradictions between handoff contexts"
  resolution: "Present conflicts to user for resolution"
  documentation: "Record conflict resolution reasoning"
  propagation: "Update affected contexts and notify relevant agents"
```

## Quality Assurance

### Handoff Validation Criteria
- All required sections completed with specific, actionable content
- Decision reasoning preserved for future reference
- Quality standards clearly defined and measurable
- Context sufficient for receiving agent to execute effectively
- No critical information gaps that would impede progress

### Continuous Improvement
- Track handoff effectiveness through project outcomes
- Refine handoff structure based on agent feedback
- Update requirements based on successful project patterns
- Maintain handoff template evolution for optimal results