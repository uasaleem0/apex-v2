<!-- Powered by BMAD™ Core -->

# Accessibility Validation Task

## Purpose

Execute comprehensive accessibility testing using Playwright MCP to ensure WCAG AA+ compliance and inclusive design implementation.

## Prerequisites

- Playwright MCP server with accessibility testing capabilities
- UI implementation accessible for testing
- WCAG 2.1 AA+ guidelines reference

## Key Activities & Instructions

### 1. Automated Accessibility Scanning

#### A. Core WCAG Principles Testing

**Perceivable**
- Color contrast ratios (4.5:1 normal, 3:1 large text)
- Alternative text for images and icons
- Captions/transcripts for media content
- Content distinguishable without color alone

**Operable**
- Keyboard navigation functionality
- No seizure-inducing flashing content
- Sufficient time limits for user actions
- Clear navigation and page structure

**Understandable**
- Readable and understandable text content
- Predictable page functionality
- Input assistance and error identification
- Consistent navigation patterns

**Robust**
- Valid, semantic HTML structure
- Compatibility with assistive technologies
- Future-proof markup patterns

#### B. Playwright Accessibility Test Suite

```yaml
accessibility_tests:
  contrast_validation:
    - Test all text/background combinations
    - Verify interactive element contrast
    - Check focus indicator visibility
  
  keyboard_navigation:
    - Tab order logical and complete
    - All interactive elements reachable
    - Skip links functional
    - Focus traps work correctly
  
  screen_reader_compatibility:
    - ARIA labels present and descriptive
    - Semantic HTML structure
    - Hidden content properly excluded
    - Dynamic content announced
  
  responsive_accessibility:
    - Touch targets minimum 44px
    - Content reflow maintains accessibility
    - Zoom to 200% without horizontal scroll
```

### 2. Manual Accessibility Testing

#### A. Assistive Technology Simulation
- **Screen Reader Testing**: Navigate with NVDA/JAWS simulation
- **Keyboard-Only Testing**: Complete all user flows without mouse
- **Voice Control Testing**: Verify voice navigation compatibility
- **Switch Navigation**: Test single-switch access patterns

#### B. User Experience Validation
- **Cognitive Load Assessment**: Clear instructions and error messages
- **Motor Impairment Consideration**: Generous click targets, no precision required
- **Visual Impairment Support**: High contrast mode, zoom compatibility
- **Hearing Impairment Accommodation**: Visual alternatives for audio cues

### 3. Specific Component Accessibility

#### A. Form Accessibility
- Label association with form controls
- Required field indication
- Error message clarity and association
- Fieldset and legend usage for groups
- Autocomplete attributes where appropriate

#### B. Navigation Accessibility
- Landmark roles properly implemented
- Breadcrumb navigation accessible
- Menu systems keyboard accessible
- Search functionality accessible

#### C. Interactive Content
- Modal dialog accessibility
- Tooltip and popover accessibility
- Carousel and slider controls
- Data table accessibility features

### 4. Accessibility Issue Classification

#### A. Priority Levels
```yaml
critical_issues:
  - Color contrast failures below 3:1
  - Keyboard navigation completely broken
  - Screen reader cannot access content
  - Form submission impossible without mouse

high_priority:
  - Missing alt text on informative images
  - Focus indicators insufficient
  - Error messages not associated with fields
  - Heading hierarchy violations

medium_priority:
  - Redundant link text
  - Missing skip links
  - Insufficient touch target size
  - Non-semantic HTML usage

low_priority:
  - Decorative elements not hidden from screen readers
  - Minor ARIA improvements
  - Enhancement opportunities for better UX
```

### 5. Remediation Recommendations

#### A. Quick Fixes (Immediate Implementation)
- Add missing alt attributes
- Improve color contrast values
- Fix heading hierarchy
- Add ARIA labels where needed

#### B. Structural Improvements (Short-term)
- Implement semantic HTML patterns
- Add skip navigation links
- Ensure keyboard focus management
- Create accessible error handling

#### C. Enhanced Accessibility (Long-term)
- Implement advanced ARIA patterns
- Add accessibility preferences
- Create accessibility statement
- User testing with disabled users

### 6. Accessibility Compliance Report

#### A. Executive Summary
```yaml
compliance_score: "[0-100]%"
wcag_level_achieved: "AA/AAA"
critical_violations: "[number]"
total_issues: "[number]"
estimated_remediation_time: "[hours/days]"
```

#### B. Detailed Findings
- Issue descriptions with WCAG criterion reference
- Screenshots highlighting accessibility barriers
- Code snippets showing current and recommended implementations
- Impact assessment on different user groups

#### C. Testing Evidence
- Automated test results from accessibility scanners
- Manual testing procedures and outcomes
- User journey documentation for assistive technology users
- Performance impact of accessibility improvements

### 7. Continuous Accessibility Monitoring

#### A. Automated Testing Integration
- Playwright accessibility tests in CI/CD pipeline
- Regular accessibility regression testing
- New feature accessibility requirements checklist

#### B. Accessibility Governance
- Design review process includes accessibility checks
- Developer training on accessible coding practices
- User testing with disabled users integrated into UX process

## Outputs

1. **Accessibility Compliance Report** (`accessibility-[timestamp].md`)
2. **Remediation Action Plan** (`accessibility-fixes-[timestamp].md`)
3. **Automated Test Suite** (continuous accessibility validation)
4. **Accessibility Guidelines** (project-specific implementation guide)

## Integration with BMAD System

- **Story Acceptance Criteria**: Include accessibility requirements
- **Definition of Done**: WCAG AA+ compliance verified
- **Quality Gates**: Automated accessibility tests must pass
- **User Story Validation**: Accessibility testing included in review

## Success Criteria

- WCAG 2.1 AA+ compliance achieved (target: 95%+ score)
- All critical accessibility barriers removed
- Comprehensive keyboard navigation functionality
- Screen reader compatibility verified across major tools
- Touch target sizes meet minimum requirements (44px)
- Color contrast ratios exceed minimum thresholds