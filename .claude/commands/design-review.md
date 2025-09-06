# Design Review Slash Command

**Purpose**: Execute comprehensive automated design review with Playwright MCP validation and self-reflection loop.

**Usage**: `/design-review [component|page|full]`

**Integration**: Activates Sally (UX Expert) with automated design assessment capabilities.

## Command Implementation

### Syntax Options
- `/design-review` - Full site design review
- `/design-review component [name]` - Specific component review  
- `/design-review page [url]` - Single page assessment
- `/design-review accessibility` - Accessibility-focused audit
- `/design-review performance` - Core Web Vitals and performance focus

### Execution Flow

#### 1. Initialization Phase
```yaml
setup:
  - Activate Sally (UX Expert) persona
  - Initialize Playwright MCP connection
  - Load brand guidelines (Wisdom Practice style guide)
  - Establish baseline metrics for comparison
```

#### 2. Automated Assessment Phase
```yaml
playwright_testing:
  visual_hierarchy:
    - Typography scale verification
    - Color contrast automated testing
    - Spacing consistency validation
    - Brand alignment verification
  
  interaction_design:
    - UI state testing (hover, focus, active, disabled)
    - Form validation behavior
    - Navigation pattern consistency
    - Loading state implementation
  
  responsive_design:
    - Multi-viewport testing (320px, 768px, 1024px, 1440px+)
    - Touch target size validation
    - Content adaptation verification
    - Breakpoint transition smoothness
  
  accessibility_compliance:
    - WCAG 2.1 AA+ automated scanning
    - Keyboard navigation testing
    - Screen reader compatibility
    - Color blind accessibility validation
  
  performance_metrics:
    - Core Web Vitals measurement
    - Animation performance testing
    - Loading time assessment
    - Resource optimization validation
```

#### 3. Self-Reflection Loop
```yaml
iterative_improvement:
  - Issue identification and prioritization
  - Quick fixes implementation (CSS/HTML adjustments)
  - Re-testing with Playwright validation
  - Score comparison and improvement measurement
  - Documentation of changes and learnings
```

#### 4. Report Generation
```yaml
comprehensive_output:
  - Design review report (design-review-[timestamp].md)
  - Accessibility compliance report
  - Performance metrics summary  
  - Actionable remediation plan
  - Playwright test suite for continuous validation
```

## BMAD Integration Points

### Story Validation
- **Acceptance Criteria Verification**: UI implementation matches story requirements
- **Definition of Done**: Automated quality gates ensure completeness
- **Quality Assurance**: Systematic validation prevents regression

### Agent Handoff Protocol
- **Context Reading**: Previous agent specifications and requirements
- **Context Writing**: Design decisions and specifications for next agent
- **Collaborative Review**: Cross-functional validation with other BMAD agents

### Continuous Improvement
- **Metrics Tracking**: Baseline establishment for future comparison
- **Process Refinement**: Methodology improvements based on outcomes
- **Knowledge Sharing**: Learnings integrated into team practices

## Token Efficiency Optimizations

### Automated Reporting
- **Template-Based Output**: Standardized report format reduces token usage
- **Priority-Based Details**: Critical issues get full detail, minor issues summarized
- **Reference Integration**: Links to existing checklists and templates

### Smart Scoping
- **Component-Level Focus**: Target specific areas for detailed review
- **Incremental Validation**: Build on previous review results
- **Change Detection**: Only re-test modified components

### Contextual Awareness
- **Brand Guidelines Integration**: Automatic application of Wisdom Practice standards
- **BMAD System Integration**: Seamless workflow with existing agent ecosystem
- **Progressive Enhancement**: Build complexity based on project maturity

## Success Metrics

### Quality Gates
- **Deployment Readiness**: Score ≥ 85/100, Critical Issues = 0
- **Accessibility Compliance**: WCAG 2.1 AA+ ≥ 90/100
- **Performance Standards**: Core Web Vitals within Google thresholds
- **Brand Consistency**: 100% alignment with style guide

### Process Efficiency
- **Review Completion**: Full review in < 30 minutes
- **Issue Resolution**: 80% of issues fixed within review session
- **Continuous Validation**: Automated tests prevent future regression
- **Knowledge Transfer**: Team learning and capability improvement

## Integration Commands

### Pre-Review Setup
```bash
# Ensure Playwright MCP is active
claude mcp status

# Activate design review mode
/activate ux-expert

# Initialize review session
*design-review [scope]
```

### Post-Review Actions
```bash
# Generate documentation
*write-context

# Update test suite
*self-reflect

# Schedule follow-up
*accessibility-audit
```

## Expected Outputs

1. **Immediate Feedback**: Real-time issue identification during review
2. **Comprehensive Report**: Detailed findings with actionable recommendations  
3. **Remediation Plan**: Prioritized action items with effort estimates
4. **Test Automation**: Playwright test suite for continuous validation
5. **Knowledge Capture**: Process improvements and team learnings

---

**Command Created**: [ISO 8601 DateTime]
**Integration Status**: Active with BMAD system
**Next Enhancement**: Quarterly review and optimization