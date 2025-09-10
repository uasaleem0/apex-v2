# SuperDesign Professional Prompting Strategies
**Agent**: Sally (@ux-expert)  
**Purpose**: Specific prompting templates for creating world-class designs in SuperDesign  
**Based on**: Successful Claude Code transcript analysis

## Core Prompting Principles

### **Foundation-First Approach (From Transcripts)**
```yaml
NEVER_PROMPT_FOR:
  - "Make it beautiful"
  - "Make it professional" 
  - "Modern design"
  - Generic aesthetic requests

ALWAYS_PROMPT_WITH:
  - Specific design philosophy references
  - Exact visual layout descriptions
  - Professional website examples
  - Component-level specifications
```

## Phase 4: Wireframe Creation Prompts

### **Setup Prompt Template**
```
Initialize SuperDesign with the following context:

DESIGN SYSTEM FOUNDATION:
- Design Philosophy: [From approved references - e.g., "Linear's bold typography + Notion's warm accessibility"]
- Color Palette: [From mood board - specific hex codes]
- Typography: [From mood board - specific font choices]
- Layout Inspiration: [From approved sites - specific layout patterns]

BRAND APPLICATION:
- Brand Assets: Reference /brand_assets/ folder
- Brand Personality: [From vision capture]
- Target Audience: [From vision capture]
```

### **Per-Page Wireframe Prompts**
```yaml
HOMEPAGE_PROMPT_TEMPLATE: |
  Create 5 wireframe layout variations for homepage using SuperDesign:
  
  REFERENCE INSPIRATION:
  - Layout structure like [Specific Site A]: [exact layout description]
  - Navigation approach like [Specific Site B]: [exact navigation pattern]  
  - Hero section style like [Specific Site C]: [exact hero description]
  
  CONTENT REQUIREMENTS:
  [From PRD - specific content sections needed]
  
  LAYOUT SPECIFICATIONS:
  - Hero: [Exact placement - "Image left, content right" or "Centered with background"]
  - Navigation: [Exact style from mood board]
  - Content Flow: [Priority from vision capture]
  
  BRAND INTEGRATION:
  - Colors: [Specific colors from mood board]
  - Typography: [Specific fonts from mood board]
  - Personality: [Brand personality from vision capture]
  
  Generate 5 distinct layout approaches, each referencing different approved inspiration sites.

ABOUT_PAGE_PROMPT_TEMPLATE: |
  Create 5 wireframe layouts for About page:
  
  REFERENCE INSPIRATION:
  - Team section like [Specific Site]: [exact description]
  - Story layout like [Specific Site]: [exact approach]
  - Values presentation like [Specific Site]: [exact method]
  
  [Continue same structure as homepage]

PRODUCT_PAGE_PROMPT_TEMPLATE: |
  Create 5 wireframe layouts for Product page:
  
  REFERENCE INSPIRATION:
  - Feature presentation like [Specific Site]: [exact approach]
  - Product showcase like [Specific Site]: [exact layout]
  - CTA placement like [Specific Site]: [exact positioning]
  
  [Continue same structure]
```

### **Refinement Prompt Templates**
```yaml
LAYOUT_REFINEMENT_PROMPT: |
  Refine selected wireframe layout with these specific changes:
  
  USER FEEDBACK: [Exact user feedback]
  
  MAINTAIN:
  - Overall structure from [reference site]
  - Brand color application
  - Typography hierarchy
  
  ADJUST:
  - [Specific element]: Make it more like [specific reference]
  - [Specific spacing]: Increase/decrease to match [reference]
  - [Specific component]: Change style to match [mood board element]

RESPONSIVE_REFINEMENT_PROMPT: |
  Optimize wireframe for mobile responsiveness:
  
  MOBILE INSPIRATION:
  - Navigation: Like [mobile reference site]
  - Content stacking: Like [mobile reference approach]
  - Touch targets: Following [mobile UX standard]
  
  MAINTAIN DESKTOP:
  - Keep approved desktop layout structure
  - Maintain brand consistency
  - Preserve user-approved elements
```

## Phase 5: Component Integration Prompts

### **Component Selection Prompts**
```yaml
COMPONENT_DISCOVERY_PROMPT: |
  Using ShadCN MCP, find professional components for:
  
  COMPONENT TYPE: [e.g., Navigation Bar]
  
  INSPIRATION MATCHING:
  - Visual style like: [specific site navigation]
  - Interaction pattern like: [specific reference]
  - Responsive behavior like: [specific mobile reference]
  
  BRAND REQUIREMENTS:
  - Must support: [specific brand colors]
  - Typography compatibility: [specific fonts]
  - Personality match: [brand personality]
  
  Present 5 professional options that match these specific criteria.

COMPONENT_CUSTOMIZATION_PROMPT: |
  Customize selected ShadCN component with:
  
  BRAND INTEGRATION:
  - Colors: Apply [specific hex codes] from mood board
  - Typography: Apply [specific fonts] from design system
  - Spacing: Match [specific reference site] spacing patterns
  
  MOOD BOARD ELEMENTS:
  - Hover effects: Like [specific mood board example]
  - Animation style: Like [specific reference interaction]
  - Visual hierarchy: Like [specific approved layout]
```

### **SuperDesign Preview Integration**
```yaml
PREVIEW_INTEGRATION_PROMPT: |
  Replace wireframe placeholders with customized components in SuperDesign:
  
  COMPONENT MAPPING:
  - Wireframe navigation → [Customized ShadCN component]
  - Wireframe hero → [Customized hero component]
  - Wireframe features → [Customized card components]
  
  CONSISTENCY REQUIREMENTS:
  - All components use design_system.json styling
  - All animations use Framer Motion library
  - All typography matches approved font choices
  - All colors match mood board palette
  
  INTERACTIVE BEHAVIOR:
  - Buttons: [Specific hover/click behavior from mood board]
  - Forms: [Specific validation style from references]
  - Navigation: [Specific mobile behavior from references]

ANIMATION_INTEGRATION_PROMPT: |
  Add Framer Motion animations to SuperDesign preview:
  
  ANIMATION REFERENCES:
  [From mood board - specific animations user liked]
  
  IMPLEMENTATION:
  - Page transitions: Like [specific reference site]
  - Component animations: Like [specific mood board element]
  - Micro-interactions: Like [specific approved interaction]
  
  PERFORMANCE:
  - Use GPU-accelerated properties only
  - Respect reduced-motion preferences
  - Maintain 60fps performance target
```

## Professional Quality Prompts

### **Brand Consistency Prompts**
```yaml
BRAND_APPLICATION_PROMPT: |
  Apply brand consistency across all SuperDesign elements:
  
  BRAND ASSETS INTEGRATION:
  - Colors: [Exact hex codes from brand_assets/]
  - Typography: [Exact font specifications]
  - Logo placement: [Specific placement from mood board]
  
  BRAND PERSONALITY EXPRESSION:
  - Tone: [Brand personality from vision capture]
  - Visual style: [Approved aesthetic approach]
  - User experience: [Target audience expectations]
  
  REFERENCE ALIGNMENT:
  - Professional standard: Match [specific reference site] quality level
  - Industry positioning: Position like [specific competitor] but differentiated by [specific brand elements]
```

### **Quality Validation Prompts**
```yaml
PROFESSIONAL_REVIEW_PROMPT: |
  Review SuperDesign preview against professional standards:
  
  QUALITY CHECKLIST:
  - Visual hierarchy: Clear and logical like [reference site]
  - Typography scale: Consistent and readable
  - Color accessibility: WCAG AA+ compliance
  - Spacing consistency: Following design system rules
  - Component coherence: All elements feel unified
  
  REFERENCE COMPARISON:
  - Does this match [reference site] level of polish?
  - Would users expect this quality from [industry] companies?
  - Are there any amateur-looking elements that need refinement?
  
  BRAND ALIGNMENT:
  - Does this express [brand personality] effectively?
  - Would [target audience] find this appealing and trustworthy?
  - Is this differentiated enough from [competitors]?
```

## Error Recovery Prompts

### **When SuperDesign Fails**
```yaml
SUPERDESIGN_FALLBACK_PROMPT: |
  SuperDesign extension issues detected. Alternative approach:
  
  HTML PREVIEW METHOD:
  - Create wireframe as semantic HTML with inline CSS
  - Use viewport meta tag for responsive testing
  - Include all approved components as HTML mockups
  - Apply design_system.json styles directly
  
  COMPONENT PREVIEW METHOD:
  - Create individual component HTML files
  - Show component variations side-by-side
  - Include interactive states (hover, focus, active)
  - Maintain brand consistency across all previews
```

### **When Component Selection Unclear**
```yaml
COMPONENT_CLARIFICATION_PROMPT: |
  Component selection needs clarification:
  
  REFERENCE COMPARISON:
  Show user examples comparing:
  - Option A: [Component] styled like [reference site A]
  - Option B: [Component] styled like [reference site B]  
  - Option C: [Component] styled like [reference site C]
  
  BRAND FIT ANALYSIS:
  - Which best matches [brand personality]?
  - Which serves [target audience] needs best?
  - Which differentiates from [competitors] effectively?
```

## Token Efficiency Strategies

### **Batch Component Selection**
```yaml
EFFICIENT_COMPONENT_PROMPT: |
  Select all navigation components in single session:
  
  COMPONENT BUNDLE:
  - Header navigation: [specific requirements]
  - Mobile menu: [specific requirements] 
  - Footer navigation: [specific requirements]
  - Breadcrumbs: [specific requirements]
  
  UNIFIED CRITERIA:
  - All must match [specific reference site] style
  - All must work with [brand colors]
  - All must support [responsive requirements]
```

### **Focused Refinement Sessions**
```yaml
REFINEMENT_BATCH_PROMPT: |
  Refine all button components together:
  
  BUTTON VARIATIONS NEEDED:
  - Primary CTA: [specific styling from mood board]
  - Secondary action: [specific styling from mood board] 
  - Tertiary/text: [specific styling from mood board]
  - Destructive: [specific styling from mood board]
  
  CONSISTENCY REQUIREMENTS:
  - All use same hover animation pattern
  - All follow same sizing scale
  - All maintain brand color relationships
```

## Success Validation

### **Professional Result Indicators**
```yaml
QUALITY_SUCCESS_METRICS:
  visual_hierarchy: "Clear, logical, guides user attention effectively"
  brand_expression: "Unique personality that differentiates from competitors"
  reference_quality: "Matches approved reference sites' level of sophistication"
  user_experience: "Intuitive navigation and interaction patterns"
  technical_execution: "Proper responsive behavior and accessibility"
  
FAILURE_INDICATORS:
  generic_appearance: "Looks like every other AI-generated site"
  brand_mismatch: "Doesn't express intended brand personality"
  amateur_execution: "Inconsistent spacing, typography, or color usage"
  poor_hierarchy: "User doesn't know where to look or what to do"
  reference_deviation: "Doesn't match approved inspiration quality level"
```

## Implementation Notes

### **Agent Integration**
- These prompts must be built into the systematic-wireframes.md and component-integration.md task files
- Each phase must reference specific mood board elements and approved references
- Never use generic prompts - always specific, reference-driven prompts
- Token efficiency through batched operations where possible

### **User Experience**
- User sees exact prompt being used for transparency
- User can modify prompts based on their specific requirements
- All prompts reference user's approved mood board and vision capture
- Prompts evolve based on user feedback and refinements

**This prompting strategy ensures the same professional results demonstrated in the successful transcripts by using specific references, exact specifications, and professional quality standards rather than generic design requests.**