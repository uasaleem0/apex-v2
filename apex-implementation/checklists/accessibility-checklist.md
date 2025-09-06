<!-- Powered by BMAD™ Core -->

# Accessibility Checklist (WCAG 2.1 AA+)

## Pre-Accessibility Testing Setup
- [ ] **Playwright MCP Configured**: Accessibility testing tools active and responsive  
- [ ] **Screen Reader Available**: NVDA, JAWS, or VoiceOver testing capability
- [ ] **Keyboard Testing Setup**: Mouse disconnected for keyboard-only navigation
- [ ] **Color Blindness Simulation**: Tools ready for color vision deficiency testing
- [ ] **Accessibility Standards**: WCAG 2.1 AA+ guidelines referenced and accessible

## Perceivable (Information must be presentable in ways users can perceive)

### Text Alternatives
- [ ] **Images Have Alt Text**: All informative images include descriptive alt attributes
- [ ] **Decorative Images**: Decorative images have empty alt="" or CSS backgrounds
- [ ] **Complex Images**: Charts, graphs include detailed text descriptions
- [ ] **Icon Meanings**: Icon-only buttons have accessible names or labels
- [ ] **Logo Alt Text**: Company logos have appropriate alternative text
- [ ] **Image Maps**: Area elements in image maps have accessible names

### Time-based Media
- [ ] **Video Captions**: All videos include synchronized captions
- [ ] **Audio Descriptions**: Videos with visual content have audio descriptions
- [ ] **Transcript Availability**: Audio content has text transcript alternatives
- [ ] **Auto-play Control**: Media doesn't auto-play or has pause/stop controls
- [ ] **Media Player Accessibility**: Custom media controls are keyboard accessible

### Adaptable Content
- [ ] **Semantic HTML**: Proper HTML elements used for structure and meaning
- [ ] **Heading Hierarchy**: Logical H1-H6 structure without skipping levels
- [ ] **List Markup**: Lists use proper <ul>, <ol>, <li> elements
- [ ] **Table Structure**: Data tables have proper headers and captions
- [ ] **Form Labels**: All form controls have associated labels
- [ ] **Landmark Roles**: Page sections identified with ARIA landmarks

### Distinguishable Content
- [ ] **Color Contrast**: 4.5:1 for normal text, 3:1 for large text (18pt+/14pt+ bold)
- [ ] **Color Independence**: Information not conveyed by color alone
- [ ] **Text Resize**: Content readable and functional at 200% zoom
- [ ] **Images of Text**: Minimal use, actual text preferred when possible
- [ ] **Background Audio Control**: Background sounds can be paused or controlled
- [ ] **Visual Focus Indicators**: Focus indicators have 3:1 contrast ratio

## Operable (Interface components must be operable)

### Keyboard Accessible
- [ ] **Complete Keyboard Navigation**: All functionality available via keyboard
- [ ] **Logical Tab Order**: Tab sequence follows meaningful order
- [ ] **Focus Visible**: Currently focused element clearly visible
- [ ] **No Keyboard Traps**: Focus doesn't get stuck in any component
- [ ] **Skip Navigation Links**: "Skip to main content" link provided
- [ ] **Access Key Usage**: Access keys don't conflict with screen readers

### No Seizures or Physical Reactions
- [ ] **Flash Frequency**: Content flashes less than 3 times per second
- [ ] **Motion Controls**: No content causes seizures or vestibular disorders
- [ ] **Animation Control**: Users can pause, stop, or hide moving content
- [ ] **Parallax Alternatives**: Reduced motion options for parallax scrolling

### Navigable Content
- [ ] **Page Titles**: Unique, descriptive page titles for each page
- [ ] **Link Purpose**: Link text describes destination or function
- [ ] **Multiple Navigation**: More than one way to locate pages
- [ ] **Focus Order**: Focus order preserves meaning and operability
- [ ] **Breadcrumbs**: Clear path indication for complex sites
- [ ] **Site Search**: Search functionality available and accessible

### Input Assistance
- [ ] **Touch Target Size**: Minimum 44px × 44px for all touch targets
- [ ] **Target Spacing**: Adequate space between adjacent touch targets  
- [ ] **Pointer Gestures**: Complex gestures have single-pointer alternatives
- [ ] **Motion Activation**: Motion-based functionality can be disabled
- [ ] **Accidental Input Prevention**: Confirmation required for destructive actions

## Understandable (Information and UI operation must be understandable)

### Readable Content
- [ ] **Language Declaration**: Page language identified in HTML lang attribute
- [ ] **Language Changes**: Parts in different languages properly marked
- [ ] **Unusual Words**: Definitions provided for jargon, idioms, abbreviations
- [ ] **Reading Level**: Content appropriate for target audience reading level
- [ ] **Pronunciation**: Pronunciation provided where meaning depends on it

### Predictable Interface
- [ ] **Focus Changes**: Focus changes don't trigger unexpected context changes
- [ ] **Input Changes**: Form input doesn't automatically change context
- [ ] **Consistent Navigation**: Navigation mechanisms consistent across pages
- [ ] **Consistent Identification**: Components with same functionality labeled consistently
- [ ] **Change Requests**: Context changes initiated only by user request

### Input Assistance & Error Prevention
- [ ] **Error Identification**: Form errors identified and described to users
- [ ] **Error Suggestions**: Suggestions provided for fixing input errors
- [ ] **Error Prevention**: Important actions confirmed or reversible
- [ ] **Required Fields**: Required form fields clearly indicated
- [ ] **Input Format Examples**: Expected input formats shown in labels or placeholders
- [ ] **Contextual Help**: Help text available for complex form fields

## Robust (Content must be robust enough for various assistive technologies)

### Compatible Code
- [ ] **Valid HTML**: Code validates according to HTML specifications
- [ ] **Unique IDs**: ID attributes unique within each page
- [ ] **Proper Nesting**: Elements properly nested according to specifications
- [ ] **Accessibility APIs**: Content works with current and future assistive technologies

### ARIA Implementation
- [ ] **ARIA Labels**: Interactive elements have accessible names
- [ ] **ARIA Roles**: Custom components have appropriate roles
- [ ] **ARIA States**: Dynamic content states communicated to screen readers
- [ ] **ARIA Properties**: Relationships between elements properly described
- [ ] **Live Regions**: Dynamic content updates announced appropriately
- [ ] **ARIA Descriptions**: Complex interactions have additional descriptions

## Advanced Accessibility Testing

### Screen Reader Testing
- [ ] **NVDA Compatibility**: Content navigable and understandable with NVDA
- [ ] **JAWS Compatibility**: All functionality works with JAWS screen reader
- [ ] **VoiceOver Testing**: iOS/macOS VoiceOver navigation successful
- [ ] **Content Reading Order**: Screen reader announces content in logical sequence
- [ ] **Form Completion**: Forms completable using only screen reader
- [ ] **Error Announcement**: Form errors properly announced to screen reader users

### Keyboard Navigation Testing
- [ ] **Tab Navigation**: All interactive elements reachable via Tab key
- [ ] **Arrow Key Navigation**: Appropriate arrow key support in menus/widgets
- [ ] **Enter/Space Activation**: Buttons and links activate with Enter/Space
- [ ] **Escape Key Support**: Modal dialogs and dropdowns close with Escape
- [ ] **Shortcut Keys**: Any keyboard shortcuts don't conflict with assistive tech
- [ ] **Focus Management**: Focus properly managed in dynamic content

### Specialized User Testing Scenarios
- [ ] **Motor Impairment Simulation**: Navigation possible with limited dexterity
- [ ] **Visual Impairment Testing**: High contrast and zoom functionality
- [ ] **Cognitive Load Assessment**: Instructions clear, errors recoverable
- [ ] **Hearing Impairment Simulation**: Visual alternatives for audio content
- [ ] **Switch Navigation Testing**: Single-switch access where applicable
- [ ] **Voice Control Testing**: Voice navigation software compatibility

## Mobile Accessibility Considerations

### Touch Interface Accessibility  
- [ ] **Touch Target Size**: Minimum 44px × 44px on all mobile devices
- [ ] **Gesture Alternatives**: Swipe actions have button alternatives
- [ ] **Screen Reader Navigation**: Mobile screen readers work effectively
- [ ] **Zoom Compatibility**: Content usable at 200% zoom on mobile
- [ ] **Orientation Independence**: Content works in both portrait and landscape
- [ ] **Touch Accommodations**: Adequate spacing prevents accidental touches

### Mobile-Specific Features
- [ ] **Voice Input Support**: Speech recognition software compatibility
- [ ] **Device Sensors**: Motion/orientation features have alternatives
- [ ] **Mobile Screen Readers**: TalkBack (Android) and VoiceOver (iOS) testing
- [ ] **Touch Exploration**: Screen reader users can explore interface
- [ ] **Reduced Motion**: Respects user's reduced motion preferences

## Compliance Validation & Documentation

### Automated Testing Results
- [ ] **axe-core Results**: Automated accessibility scanner passes all tests
- [ ] **WAVE Tool Validation**: Web Accessibility Evaluation Tool shows no errors
- [ ] **Lighthouse Accessibility**: Google Lighthouse accessibility score ≥ 95
- [ ] **Playwright Accessibility**: Custom accessibility tests all passing
- [ ] **Color Contrast Analyzer**: All color combinations meet WCAG standards

### Manual Testing Documentation
- [ ] **Screen Reader Test Report**: Detailed findings from assistive technology testing
- [ ] **Keyboard Navigation Report**: Complete keyboard testing results documented
- [ ] **User Testing Results**: Feedback from users with disabilities incorporated
- [ ] **Accessibility Statement**: Public accessibility statement created/updated
- [ ] **Remediation Plan**: Action items for any remaining accessibility barriers
- [ ] **Training Documentation**: Team accessibility knowledge gaps identified

## Quality Assurance & Sign-off

### Final Accessibility Validation
- [ ] **WCAG 2.1 AA+ Compliance**: All Level AA criteria met, some AAA achieved
- [ ] **Zero Critical Barriers**: No accessibility barriers that prevent task completion
- [ ] **Cross-Platform Testing**: Consistent accessibility across devices/browsers
- [ ] **Performance Impact**: Accessibility improvements don't degrade performance
- [ ] **Future-Proof Implementation**: Accessibility features will scale with site growth

### Stakeholder Approval
- [ ] **UX Expert Review**: Sally (accessibility specialist) approval obtained
- [ ] **Development Team Sign-off**: Technical implementation validated
- [ ] **Product Owner Acceptance**: Business requirements met with accessibility
- [ ] **Legal/Compliance Review**: Regulatory requirements satisfied
- [ ] **User Advocate Approval**: Disability community representative feedback positive

---

**Accessibility Review Completed By**: [Name and Credentials]
**Review Date**: [ISO 8601 DateTime]
**WCAG 2.1 Compliance Level**: [AA/AAA]
**Next Accessibility Audit**: [Date]
**Accessibility Score**: [0-100]/100