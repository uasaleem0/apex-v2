# Professional Prompting Templates
**Agent**: Sally (@ux-expert)  
**Purpose**: Reference templates for achieving professional results in SuperDesign and component integration
**Usage**: Referenced by systematic-wireframes.md and component-integration.md tasks

## SuperDesign Professional Setup Templates

### Initialization Prompt
```yaml
superdesign_initialization: |
  "Initialize SuperDesign with the following context:
  
  DESIGN SYSTEM FOUNDATION:
  - Design Philosophy: [From approved references - e.g., 'Linear's bold typography + Notion's warm accessibility']
  - Color Palette: [From mood board - specific hex codes]
  - Typography: [From mood board - specific font choices]  
  - Layout Inspiration: [From approved sites - specific layout patterns]
  
  BRAND APPLICATION:
  - Brand Assets: Reference /brand_assets/ folder
  - Brand Personality: [From vision capture]
  - Target Audience: [From vision capture]"
```

### Page-Specific Wireframe Templates
```yaml
homepage_wireframe_prompt: |
  "Create 5 wireframe layout variations for homepage:
  
  REFERENCE INSPIRATION:
  - Layout structure like [Specific Site A]: [exact layout description]
  - Navigation approach like [Specific Site B]: [exact navigation pattern]  
  - Hero section style like [Specific Site C]: [exact hero description]
  
  CONTENT REQUIREMENTS:
  [From PRD - specific content sections needed]
  
  LAYOUT SPECIFICATIONS:
  - Hero: [Exact placement - 'Image left, content right' or 'Centered with background']
  - Navigation: [Exact style from mood board]
  - Content Flow: [Priority from vision capture]
  
  Generate 5 distinct layout approaches, each referencing different approved inspiration sites."

about_page_wireframe_prompt: |
  "Create 5 wireframe layouts for About page:
  
  REFERENCE INSPIRATION:
  - Team section like [Specific Site]: [exact description]
  - Story layout like [Specific Site]: [exact approach]
  - Values presentation like [Specific Site]: [exact method]
  
  [Apply same systematic structure as homepage template]"

product_page_wireframe_prompt: |
  "Create 5 wireframe layouts for Product page:
  
  REFERENCE INSPIRATION:
  - Feature presentation like [Specific Site]: [exact approach]
  - Product showcase like [Specific Site]: [exact layout]
  - CTA placement like [Specific Site]: [exact positioning]
  
  [Apply same systematic structure]"
```

### Refinement Templates
```yaml
layout_refinement_prompt: |
  "Refine selected wireframe with specific changes:
  
  USER FEEDBACK: [Exact user feedback]
  
  MAINTAIN:
  - Overall structure from [reference site]
  - Brand color application
  - Typography hierarchy
  
  ADJUST:
  - [Specific element]: Make it more like [specific reference]
  - [Specific spacing]: Increase/decrease to match [reference]
  - [Specific component]: Change style to match [mood board element]"

responsive_optimization_prompt: |
  "Optimize wireframe for mobile responsiveness:
  
  MOBILE INSPIRATION:
  - Navigation: Like [mobile reference site]
  - Content stacking: Like [mobile reference approach]
  - Touch targets: Following [mobile UX standard]
  
  MAINTAIN DESKTOP:
  - Keep approved desktop layout structure
  - Maintain brand consistency
  - Preserve user-approved elements"
```

## Component Integration Professional Templates

### Component Discovery Templates
```yaml
component_discovery_prompt: |
  "Using ShadCN MCP, find professional components for:
  
  COMPONENT TYPE: [e.g., Navigation Bar]
  
  INSPIRATION MATCHING:
  - Visual style like: [specific site navigation from approved references]
  - Interaction pattern like: [specific reference behavior]
  - Responsive behavior like: [specific mobile reference approach]
  
  BRAND REQUIREMENTS:
  - Must support: [specific brand colors from mood board]
  - Typography compatibility: [specific fonts from design system]
  - Personality match: [brand personality from vision capture]
  
  Present 5 professional options that match these specific criteria."

component_customization_prompt: |
  "Customize selected ShadCN component with:
  
  BRAND INTEGRATION:
  - Colors: Apply [specific hex codes] from mood board
  - Typography: Apply [specific fonts] from design system
  - Spacing: Match [specific reference site] spacing patterns
  
  MOOD BOARD ELEMENTS:
  - Hover effects: Like [specific mood board example]
  - Animation style: Like [specific reference interaction]
  - Visual hierarchy: Like [specific approved layout]"
```

### SuperDesign Integration Templates
```yaml
preview_integration_prompt: |
  "Replace wireframe placeholders with customized components in SuperDesign:
  
  COMPONENT MAPPING:
  - Wireframe navigation → [Customized ShadCN component from selection]
  - Wireframe hero → [Customized hero component matching reference site]
  - Wireframe features → [Customized card components with brand styling]
  
  CONSISTENCY REQUIREMENTS:
  - All components use design_system.json styling
  - All animations use Framer Motion library
  - All typography matches approved font choices from mood board
  - All colors match mood board palette exactly
  
  INTERACTIVE BEHAVIOR:
  - Buttons: [Specific hover/click behavior from mood board examples]
  - Forms: [Specific validation style from reference sites]
  - Navigation: [Specific mobile behavior from approved references]"

animation_integration_prompt: |
  "Add Framer Motion animations to SuperDesign preview:
  
  ANIMATION REFERENCES:
  [From mood board - specific animations user liked from reference sites]
  
  IMPLEMENTATION:
  - Page transitions: Like [specific reference site transition]
  - Component animations: Like [specific mood board element animation]
  - Micro-interactions: Like [specific approved interaction pattern]
  
  PERFORMANCE:
  - Use GPU-accelerated properties only
  - Respect reduced-motion preferences
  - Maintain 60fps performance target"
```

### Quality Validation Templates
```yaml
professional_quality_validation: |
  "Review SuperDesign preview against professional standards:
  
  QUALITY CHECKLIST:
  - Visual hierarchy: Clear and logical like [approved reference sites]
  - Typography scale: Consistent and readable across all pages
  - Color accessibility: WCAG AA+ compliance
  - Spacing consistency: Following design system rules
  - Component coherence: All elements feel unified
  - Animation smoothness: Professional-level performance
  
  REFERENCE COMPARISON:
  - Does this match [approved reference sites] level of polish?
  - Would users expect this quality from [industry] companies?
  - Are there any amateur-looking elements that need refinement?
  
  BRAND ALIGNMENT:
  - Does this express [brand personality] effectively throughout?
  - Would [target audience] find this appealing and trustworthy?
  - Is this differentiated enough from [competitors]?"

brand_consistency_validation: |
  "Apply brand consistency across all SuperDesign elements:
  
  BRAND ASSETS INTEGRATION:
  - Colors: [Exact hex codes from brand_assets/ or mood board]
  - Typography: [Exact font specifications from approved selections]
  - Logo placement: [Specific placement from mood board references]
  
  BRAND PERSONALITY EXPRESSION:
  - Tone: [Brand personality from vision capture]
  - Visual style: [Approved aesthetic approach from references]
  - User experience: [Target audience expectations from vision]
  
  REFERENCE ALIGNMENT:
  - Professional standard: Match [specific reference site] quality level
  - Industry positioning: Position like [specific approved site] but differentiated by [specific brand elements]"
```

## Prohibited vs Required Approaches

### Never Use (Generic Prompts)
- "Make it beautiful"
- "Make it professional" 
- "Modern design"
- Generic aesthetic requests
- "Clean and minimalist"
- "Eye-catching design"

### Always Use (Specific References)
- Specific design philosophy references
- Exact visual layout descriptions
- Professional website examples
- Component-level specifications
- Brand asset integration
- Mood board element references

## Usage Instructions

1. **Reference this file** from task files instead of embedding full prompts
2. **Customize templates** by filling in bracketed placeholders with user-specific information
3. **Maintain consistency** by using the same reference sites and mood board elements across all prompts
4. **Update templates** based on successful patterns and user feedback