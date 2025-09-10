# Systematic Wireframe Creation Task
**Agent**: Sally (@ux-expert)  
**Phase**: 4 of 6 - Page-by-Page Wireframe Creation  
**Trigger**: Phase 3 completed with approved mood board

## Task Overview
Create wireframes for ALL pages systematically using SuperDesign, working page-by-page with clear progress tracking and user approval at each step.

## Prerequisites
- mood_board/ and wireframe_guidance.md exist
- SuperDesign.dev extension functional
- PRD with complete sitemap available

## Execution Steps

### 1. Sitemap Analysis & Progress Setup
- **Extract ALL pages** from PRD sitemap
- **Create progress tracker** showing total pages, completed, current, remaining
- **Present complete page list** to user for confirmation
- **Get approval** to proceed with systematic page-by-page approach

### 2. SuperDesign Setup & Professional Prompting
- **Initialize SuperDesign** with brand assets and design system
- **Load core-prompting-guide.md** for reference-driven wireframe creation
- **Never use generic prompts** - always reference specific approved sites from mood board

**Critical Rule**: Use specific references like "Layout structure like [Site A]: exact description" not "modern professional design"

### 3. Page-by-Page Wireframe Creation
**Systematic Process - NO PAGE SKIPPED:**

For each page in order:
1. **Status Update**: "Working on: [Page] - Page X of Y, Completed: [list], Remaining: [list]"
2. **Generate 5 wireframe options** using reference-driven prompts from approved sites
3. **User selects preferred option** with reasoning
4. **Iterative refinement** until user says "This page wireframe is perfect"
5. **Save to approved_wireframes/[page].html**
6. **Mark complete** and move to next page

**Progress Transparency**: User always knows exactly where we are and what's remaining.

### 4. Design System Extraction
After ALL wireframes completed:
- **Analyze patterns** across approved wireframes
- **Extract consistent styling** (typography, colors, spacing, components)
- **Create design_system.json** with all approved patterns
- **User reviews and approves** design system for Phase 5

### 5. Complete Collection Approval
**Final validation before Phase 5:**
- **Present all wireframes** with brief descriptions
- **Confirm design system** accurately reflects approved patterns
- **Get explicit approval**: "All wireframes are approved and complete"
- **Phase gate**: "Ready to proceed to Component Integration"

## Success Criteria
- [ ] ALL pages from PRD have approved wireframes
- [ ] Each page approved individually before proceeding
- [ ] Progress tracking maintained throughout
- [ ] design_system.json created from approved patterns
- [ ] User explicit approval for complete collection

## Error Handling
- **SuperDesign issues**: HTML preview fallback with responsive testing
- **User unsatisfied with options**: Generate additional variations with different references
- **Inconsistent patterns**: Harmonize before proceeding to Phase 5

## Quality Standards
- Reference-driven prompts using specific approved sites (not generic requests)
- Real content where possible (no Lorem ipsum)
- Consistent design patterns across all pages
- Professional layout principles matching mood board references

## Output Files
- `approved_wireframes/` (HTML file for each page)
- `design_system.json` (extracted design patterns)
- `phase_4_completion.md` (approval log)