<!-- Powered by BMAD™ Core -->

# Playwright Design Review Task

## Purpose

Execute comprehensive automated design review using Playwright MCP to validate UI implementation against design standards, accessibility requirements, and user experience best practices.

## Prerequisites

- Playwright MCP server active and configured
- UI implementation deployed or running locally
- Design specifications and brand guidelines accessible

## Key Activities & Instructions

### 1. Initialize Playwright Review Session

Start by connecting to the target UI implementation:

```yaml
target_environment:
  - development: http://localhost:3000 (or specified port)
  - staging: [staging URL if available]
  - production: [production URL if available]
```

### 2. Systematic UI Component Analysis

For each major UI component, execute these automated checks:

#### A. Visual Hierarchy Assessment
- **Viewport Testing**: Test on mobile (375px), tablet (768px), desktop (1024px+)
- **Typography Scale**: Verify consistent font sizes, weights, line heights
- **Color Contrast**: Automated WCAG AA+ contrast ratio validation
- **Spacing Consistency**: Check margins, padding follow design system

#### B. Interaction Pattern Validation
- **Button States**: Hover, focus, active, disabled states
- **Form Behavior**: Input validation, error states, success feedback
- **Navigation Flow**: Menu interactions, breadcrumbs, back/forward
- **Loading States**: Skeleton screens, spinners, progress indicators

#### C. Responsive Design Testing
- **Breakpoint Behavior**: Smooth transitions between screen sizes
- **Touch Targets**: Minimum 44px touch targets on mobile
- **Content Reflow**: Text and images adapt appropriately
- **Navigation Adaptation**: Mobile menu, desktop navigation

### 3. Accessibility Validation Framework

Execute comprehensive accessibility testing:

#### A. Automated WCAG Checks
- **Color Contrast**: 4.5:1 for normal text, 3:1 for large text
- **Keyboard Navigation**: Tab order, focus indicators, skip links
- **Screen Reader Compatibility**: ARIA labels, semantic HTML
- **Alternative Text**: Images, icons, decorative elements

#### B. Real User Simulation
- **Keyboard-Only Navigation**: Complete user flows without mouse
- **Screen Reader Testing**: Test with common screen readers
- **Motor Impairment Simulation**: Large touch targets, hover delays
- **Cognitive Load Assessment**: Clear instructions, error recovery

### 4. Performance & User Experience Metrics

#### A. Core Web Vitals
- **Largest Contentful Paint (LCP)**: < 2.5 seconds
- **First Input Delay (FID)**: < 100 milliseconds
- **Cumulative Layout Shift (CLS)**: < 0.1

#### B. User Experience Indicators
- **Time to Interactive**: Measure page responsiveness
- **Error Recovery**: How users recover from mistakes
- **Task Completion**: Success rates for primary user flows
- **Satisfaction Indicators**: Smooth animations, clear feedback

### 5. Self-Reflection & Iteration Loop

#### A. Automated Issue Detection
Generate detailed report of discovered issues:

```yaml
issue_classification:
  critical: Accessibility violations, broken functionality
  high: Poor responsive behavior, contrast failures
  medium: Inconsistent spacing, missing states
  low: Minor visual polish items
```

#### B. Iterative Improvement Process
1. **Priority Ranking**: Address critical and high issues first
2. **Quick Fixes**: Implement CSS/HTML adjustments
3. **Re-test**: Run Playwright validation on fixes
4. **Document**: Update design specifications with learnings

### 6. Comprehensive Design Review Report

Generate token-efficient report with:

#### A. Executive Summary
- **Overall Score**: 0-100 based on weighted criteria
- **Critical Issues**: Must-fix items before deployment
- **Recommendations**: Priority improvements with impact assessment

#### B. Detailed Findings
- **Screenshots**: Before/after comparisons of issues
- **Test Results**: Automated test outputs with pass/fail status
- **Accessibility Report**: WCAG compliance level achieved
- **Performance Metrics**: Core Web Vitals and recommendations

#### C. Implementation Roadmap
- **Immediate Fixes**: Can be addressed within current sprint
- **Medium-term Improvements**: Require design system updates
- **Long-term Enhancements**: Major UX improvements for future

## Outputs

1. **Design Review Report** (`design-review-[timestamp].md`)
2. **Accessibility Compliance Report** (`accessibility-audit-[timestamp].md`)
3. **Performance Metrics Summary** (`performance-report-[timestamp].md`)
4. **Playwright Test Suite** (automated tests for continuous validation)

## Integration with BMAD Workflow

- **Story Validation**: Ensure implemented UI matches story acceptance criteria
- **Handoff Documentation**: Clear specifications for next development cycle
- **Quality Gates**: Automated checks prevent regression in future sprints
- **Continuous Improvement**: Feed learnings back into design system

## Success Criteria

- All critical accessibility issues resolved (WCAG AA+ compliance)
- Responsive design functions flawlessly across all target devices
- Core Web Vitals meet Google's recommended thresholds
- User can complete primary tasks without confusion or errors
- Design implementation matches specifications with pixel-perfect precision