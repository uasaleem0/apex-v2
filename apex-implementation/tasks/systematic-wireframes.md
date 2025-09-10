# Systematic Wireframe Creation Task
**Agent**: Sally (@ux-expert)  
**Phase**: 4 of 6 - Systematic Wireframe Creation with Page-by-Page Progress Tracking  
**Trigger**: Phase 3 (Element Extraction) completed with approved mood board

## Task Overview
Create wireframes for ALL pages systematically using SuperDesign extension, working page-by-page with clear progress tracking and user approval at each step.

## Prerequisites
- Phase 3 completed: mood_board/ and wireframe_guidance.md exist
- SuperDesign.dev extension installed and functional
- PRD available with complete sitemap/page structure
- User ready for systematic wireframe creation

## Execution Steps

### 1. Sitemap Analysis & Progress Setup
Initialize systematic page-by-page approach:

```yaml
PROGRESS_INITIALIZATION:
  sitemap_extraction:
    - Read PRD sitemap thoroughly
    - List ALL required pages
    - Identify page types (landing, product, about, contact, etc.)
    - Determine page priorities (core vs secondary)

  progress_tracker_creation: |
    STATUS TRACKER:
    Total Pages: X
    Completed: 0
    Current: [First Page Name]
    
    Page List:
    [ ] Homepage (Landing)
    [ ] About Page  
    [ ] Product/Service Page
    [ ] Pricing Page
    [ ] Contact Page
    [ ] Additional pages from PRD
    
    Next: Begin with Homepage
    Remaining: All pages listed above

  user_confirmation:
    - Present complete page list to user
    - Confirm all required pages identified
    - Get approval to proceed with systematic approach
```

### 2. SuperDesign Extension Setup
Ensure proper SuperDesign configuration:

```yaml
SUPERDESIGN_INITIALIZATION:
  extension_check:
    - Verify SuperDesign.dev extension active
    - Initialize canvas view in VS Code/Cursor
    - Create SuperDesign claude.md context file if needed
    - Test real-time preview functionality

  mood_board_integration:
    - Load mood_board/ elements as reference
    - Reference wireframe_guidance.md for direction
    - Prepare brand assets for consistent styling
    - Set up device preview options (mobile/desktop)

  context_preparation:
    - SuperDesign context includes design system knowledge
    - Professional component library awareness
    - Brand asset integration
    - Responsive design requirements
```

### 2.1 Professional SuperDesign Prompting Strategy
Use professional prompting templates to achieve world-class results:

```yaml
PROFESSIONAL_PROMPTING_REFERENCE:
  template_source: "Reference professional-prompting-templates.md for detailed prompts"
  
  key_templates:
    - superdesign_initialization: Setup SuperDesign with specific design system foundation
    - homepage_wireframe_prompt: Reference-driven homepage wireframe creation
    - about_page_wireframe_prompt: Systematic about page layout generation
    - product_page_wireframe_prompt: Professional product page wireframe creation
    - layout_refinement_prompt: User feedback integration with reference alignment
    - responsive_optimization_prompt: Mobile-first responsive design optimization
    - professional_quality_validation: Quality checking against reference standards

  usage_principle:
    - NEVER use generic prompts ("make it professional")
    - ALWAYS use specific reference sites and mood board elements
    - Reference approved inspiration sites for every design decision
    - Apply brand assets and personality systematically
    - Validate quality against professional benchmarks

  implementation:
    - Load professional-prompting-templates.md when executing wireframe tasks
    - Customize template prompts with user's specific reference sites
    - Fill bracketed placeholders with mood board and brand asset details
    - Maintain consistency across all wireframe creation processes
```

### 3. Page-by-Page Wireframe Creation
SYSTEMATIC APPROACH - No page skipped:

```yaml
PER_PAGE_PROCESS:
  page_initiation:
    status_update: |
      "🎯 CURRENT STATUS:
      Working on: [Page Name]
      Progress: Page X of Y  
      Completed: [list of completed pages]
      Remaining: [list of remaining pages]"

  wireframe_generation:
    - Generate 5 wireframe layout options for current page
    - Use SuperDesign canvas for real-time visual feedback
    - Reference mood board elements specific to page type
    - Apply brand guidelines and design patterns
    - Show mobile and desktop versions

  user_selection_process:
    presentation: |
      "Here are 5 wireframe options for [Page Name]:
      
      Option 1: [Brief description of layout approach]
      Option 2: [Brief description of layout approach]
      Option 3: [Brief description of layout approach]
      Option 4: [Brief description of layout approach]
      Option 5: [Brief description of layout approach]
      
      Which layout direction do you prefer?"

  iterative_refinement:
    - User selects preferred option
    - Make requested refinements on selected wireframe
    - Continue iteration until user says "This page wireframe is perfect"
    - Save approved wireframe to approved_wireframes/[page_name].html

  page_completion:
    - Mark page as complete in progress tracker
    - Update status for user visibility
    - Move to next page in systematic order
```

### 4. Progress Tracking & Status Updates
Maintain complete transparency throughout process:

```yaml
STATUS_COMMUNICATION:
  after_each_page: |
    "✅ COMPLETED: [Page Name]
    
    📊 PROGRESS UPDATE:
    Completed Pages:
    ✅ [List all completed pages]
    
    🎯 NEXT: [Next page name]
    
    📋 REMAINING:
    [ ] [List remaining pages]
    
    Ready to proceed to [Next Page]? (Yes/No)"

  systematic_validation:
    - Never proceed to next page without explicit approval
    - Confirm user satisfaction with current page
    - Address any concerns before moving forward
    - Maintain clear record of approved pages
```

### 5. Design System Creation
After all wireframes completed:

```yaml
DESIGN_SYSTEM_GENERATION:
  pattern_analysis:
    - Analyze common patterns across all approved wireframes
    - Extract consistent spacing, typography, color usage
    - Identify reusable component patterns
    - Document responsive behavior patterns

  design_system_json_creation:
    structure: |
      {
        "typography": {
          "headings": {...},
          "body": {...},
          "captions": {...}
        },
        "colors": {
          "primary": {...},
          "secondary": {...},
          "semantic": {...}
        },
        "spacing": {
          "margins": {...},
          "padding": {...},
          "grid": {...}
        },
        "components": {
          "buttons": {...},
          "forms": {...},
          "cards": {...}
        }
      }

  validation:
    - User reviews design_system.json
    - Confirms it captures approved wireframe patterns
    - Approves for use in Phase 5 (Component Integration)
```

### 6. Complete Wireframe Approval
Final validation before phase transition:

```yaml
FINAL_APPROVAL_PROCESS:
  complete_review: |
    "🎉 ALL WIREFRAMES COMPLETE!
    
    ✅ Approved Pages:
    - Homepage: [brief description]
    - About Page: [brief description]  
    - Product Page: [brief description]
    - [List all pages with brief descriptions]
    
    📋 Ready for Phase 5 (Component Integration)?
    - All pages have approved wireframes
    - Design system extracted and documented
    - Next: Select professional components for implementation"

  user_confirmation:
    - "All wireframes are approved and complete"
    - "Design system accurately reflects my vision"
    - "Ready to proceed to Component Integration phase"
```

## Success Criteria
- [ ] ALL pages from PRD sitemap have completed wireframes
- [ ] Each page approved individually by user before proceeding
- [ ] Progress tracking maintained throughout entire process
- [ ] approved_wireframes/ contains HTML files for each page
- [ ] design_system.json created from approved patterns
- [ ] User explicitly approves complete wireframe collection
- [ ] Ready to proceed to Phase 5 (Component Integration)

## Error Handling
- If user unsatisfied with wireframe options, generate additional variations
- If SuperDesign extension issues, provide fallback preview methods
- If page requirements unclear, clarify with PRD review
- If design patterns inconsistent across pages, harmonize before proceeding
- Never proceed without explicit page-by-page approval

## Quality Standards
- Each wireframe must use real content (no Lorem ipsum)
- Responsive considerations for all layouts
- Consistent design patterns across all pages
- Clear visual hierarchy and user flow
- Professional layout principles applied
- Brand alignment throughout

## Output Files
- `approved_wireframes/` (HTML file for each approved page)
- `wireframe_progress.md` (complete progress log)
- `design_system.json` (extracted design system)
- `superdesign_context.md` (SuperDesign setup and configuration)
- `phase_4_completion.md` (final approval log and Phase 5 preparation)