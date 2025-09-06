<!-- Powered by BMAD™ Core -->

# Design Review Criteria

## Automated Design Assessment Framework

### 1. Visual Hierarchy (Weight: 25%)

#### Typography Excellence
- **Font Scale Consistency**: 8pt base scale with harmonious ratios (1.125, 1.25, 1.414)
- **Hierarchy Clarity**: H1-H6 progression with clear visual distinction
- **Reading Flow**: Logical content structure guides user attention
- **Line Height Standards**: 1.4-1.6 for body text, 1.2-1.3 for headings

#### Color System Implementation
- **Contrast Ratios**: WCAG AA+ compliance (4.5:1 normal, 3:1 large text)
- **Brand Consistency**: Primary, secondary, accent colors used appropriately
- **Semantic Color Usage**: Success (green), warning (yellow), error (red), info (blue)
- **Color Blind Accessibility**: Information conveyed beyond color alone

#### Spacing & Layout
- **8px Grid System**: All margins, padding follow consistent spacing scale
- **White Space Usage**: Strategic negative space enhances readability
- **Alignment**: Consistent left/center/right alignment patterns
- **Content Density**: Optimal information density for target device

### 2. Interaction Design (Weight: 30%)

#### User Interface States
- **Default State**: Clean, inviting, clearly actionable
- **Hover State**: Subtle feedback indicating interactivity
- **Focus State**: High-contrast, keyboard-accessible focus indicators
- **Active/Pressed State**: Clear tactile feedback for user actions
- **Disabled State**: Obviously non-functional with reduced opacity/contrast
- **Loading State**: Appropriate progress indicators and skeleton screens

#### Navigation Patterns
- **Primary Navigation**: Consistent, intuitive, accessible across pages
- **Secondary Navigation**: Contextual, helpful, non-overwhelming
- **Breadcrumbs**: Clear path indication for complex hierarchies
- **Search Functionality**: Discoverable, functional, with helpful results

#### Form Interactions
- **Input Field Design**: Clear labels, appropriate input types
- **Validation Feedback**: Real-time, helpful, non-punitive error messages
- **Success States**: Positive reinforcement for completed actions
- **Progressive Disclosure**: Complex forms broken into manageable steps

### 3. Responsive Design (Weight: 20%)

#### Breakpoint Behavior
- **Mobile First**: 320px+ fluid, optimized for touch
- **Tablet Adaptation**: 768px+ hybrid touch/pointer interface
- **Desktop Enhancement**: 1024px+ full feature experience
- **Large Screen Optimization**: 1440px+ content doesn't stretch excessively

#### Touch Interface Considerations
- **Minimum Touch Targets**: 44px minimum for all interactive elements
- **Gesture Support**: Swipe, pinch, scroll work intuitively
- **Thumb Zone Optimization**: Important actions within easy reach
- **Accidental Touch Prevention**: Sufficient spacing between interactive elements

#### Content Adaptation
- **Text Scaling**: Content remains readable at 200% zoom
- **Image Responsiveness**: Photos/graphics scale appropriately
- **Navigation Adaptation**: Menu systems work across device types
- **Table Responsiveness**: Data tables usable on small screens

### 4. Accessibility Compliance (Weight: 15%)

#### WCAG 2.1 AA+ Standards
- **Color Contrast**: Automated testing confirms compliance
- **Keyboard Navigation**: Complete functionality without mouse
- **Screen Reader Compatibility**: Semantic HTML, ARIA labels
- **Focus Management**: Logical tab order, visible focus indicators

#### Inclusive Design Principles
- **Motor Impairment Support**: Large touch targets, no precision required
- **Cognitive Load Management**: Clear instructions, consistent patterns
- **Visual Impairment Accommodation**: High contrast options, zoom support
- **Hearing Impairment Consideration**: Visual alternatives for audio cues

### 5. Performance & Polish (Weight: 10%)

#### Core Web Vitals
- **Largest Contentful Paint**: < 2.5 seconds
- **First Input Delay**: < 100 milliseconds
- **Cumulative Layout Shift**: < 0.1

#### Micro-Interactions
- **Animation Quality**: Smooth 60fps, purposeful, not gratuitous
- **Transition Timing**: 150-300ms for most UI transitions
- **Loading Feedback**: Progress indicators for operations > 1 second
- **Error Recovery**: Clear paths to resolve user mistakes

## Scoring Methodology

### Automated Assessment (70%)
```yaml
playwright_metrics:
  contrast_ratios: automated_wcag_testing
  responsive_breakpoints: viewport_testing_suite
  keyboard_navigation: tab_order_validation
  performance_metrics: core_web_vitals_measurement
```

### Manual Review (30%)
```yaml
expert_evaluation:
  visual_hierarchy: UX_expert_assessment
  interaction_patterns: usability_testing
  brand_consistency: design_system_compliance
  user_experience_flow: task_completion_analysis
```

### Overall Score Calculation
```yaml
final_score: 
  visual_hierarchy: score * 0.25
  interaction_design: score * 0.30
  responsive_design: score * 0.20
  accessibility: score * 0.15
  performance_polish: score * 0.10
  total: sum(weighted_scores)
```

## Quality Gates

### Deployment Readiness Thresholds
- **Critical Issues**: 0 (blocking deployment)
- **High Priority Issues**: ≤ 2 (requires remediation plan)
- **Overall Score**: ≥ 85/100 (acceptable for deployment)
- **Accessibility Score**: ≥ 90/100 (WCAG AA+ compliance)

### Continuous Improvement Targets
- **Monthly Score Improvement**: +2 points minimum
- **Zero Regression Policy**: New features cannot decrease overall score
- **User Testing Validation**: Quarterly usability testing confirms metrics
- **Performance Budget**: Core Web Vitals must remain within thresholds

## Integration with Brand Guidelines

### Wisdom Practice Brand Alignment
- **Color Usage**: Charcoal (#2C2C2C), Rust (#B85450), Beige (#F5E6D3), Forest Green (#4A5D3A), Muted Gold (#C9A961)
- **Typography**: Inter primary font, system fallback, 16px minimum mobile
- **Voice & Tone**: Authentic, direct, empowering, grounded
- **Visual Identity**: Masculine mindfulness, sophisticated, category-of-one differentiation

## Automated Reporting Format

```yaml
design_review_report:
  timestamp: ISO_8601_datetime
  overall_score: 0-100
  component_scores:
    visual_hierarchy: 0-100
    interaction_design: 0-100
    responsive_design: 0-100
    accessibility: 0-100
    performance_polish: 0-100
  critical_issues: []
  high_priority_issues: []
  recommendations: []
  remediation_estimate: hours
```