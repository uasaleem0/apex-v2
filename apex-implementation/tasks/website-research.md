# Website Research Task
**Agent**: Sally (@ux-expert)  
**Phase**: 2 of 6 - Website Research with Feedback Integration  
**Trigger**: Phase 1 (Vision Capture) completed and approved

## Task Overview
Find 5-7 professional reference websites through iterative research and user feedback, refining original vision based on discoveries.

## Prerequisites
- Phase 1 completed: vision_input.md and research_criteria.md exist
- User has approved initial vision capture
- Ready for collaborative website discovery

## Execution Steps

### 1. Initial Website Search
Using vision_input.md and research_criteria.md:

```yaml
SEARCH_PROCESS:
  initial_search:
    - Use industry keywords + aesthetic vision for search
    - Find 10-12 candidate websites
    - Include mix of: direct competitors, industry leaders, aesthetic matches
    - Present as clickable links with brief descriptions

  presentation_format: |
    "Here are 10 websites I found matching your vision:
    
    1. [Stripe](https://stripe.com) - Clean fintech SaaS, minimal design
    2. [Linear](https://linear.app) - Modern product tool, dark theme  
    3. [Notion](https://notion.so) - User-friendly, component-rich
    4. [Airtable](https://airtable.com) - Colorful, approachable data tool
    5. [Figma](https://figma.com) - Creative, design-focused interface
    ... (continue for all 10-12 sites)
    
    Please review each and tell me:
    - Which ones you LOVE and why
    - Which ones you HATE and why  
    - What specific elements catch your attention"
```

### 2. Feedback Collection & Vision Refinement
CRITICAL: This step refines the original vision

```yaml
FEEDBACK_INTEGRATION:
  collect_specific_feedback:
    - "I love Site A because: [specific reasons]"
    - "Site B is terrible because: [specific reasons]"  
    - "Site C has potential but: [what needs changing]"

  vision_refinement_process:
    - Update vision_input.md based on user feedback
    - Document new patterns discovered in user preferences
    - Create refined search criteria
    - Log all refinements in vision_evolution.md

  example_refinements: |
    Original: "Modern SaaS aesthetic"
    Refined: "Modern SaaS with bold typography like Linear, but warmer colors like Notion, avoiding Stripe's stark minimalism"
```

### 3. Iterative Search Refinement
Based on refined vision:

```yaml
REFINEMENT_PROCESS:
  additional_search:
    - Find 3-5 new websites based on refined criteria
    - Focus on newly discovered preferences
    - Present additional options
    - Continue iteration until user satisfaction

  approval_criteria:
    - User has 5-7 approved websites they genuinely like
    - Clear reasoning documented for each approval
    - No major "hate" reactions to approved sites
    - User ready to proceed with selected references
```

### 4. Final Website Approval
Create approved website collection:

```yaml
APPROVED_SITES_DOCUMENTATION:
  required_info_per_site:
    - Website name and URL
    - User's specific reasons for liking it
    - Key elements to potentially extract
    - Overall aesthetic contribution to mood board

  approval_confirmation:
    - "These are the 5-7 sites I want as references"
    - "I understand these will be used for element extraction"
    - "Ready to proceed to Phase 3 (Element Extraction)"
```

### 5. Documentation & Handoff Preparation
```bash
# Create Phase 2 outputs
- approved_sites.md (final website list with reasoning)
- vision_refinements.md (all vision updates from feedback)
- phase_2_completion.md (approval log and handoff notes)
```

## Success Criteria
- [ ] Initial 10-12 websites researched and presented
- [ ] User feedback collected and vision refined accordingly  
- [ ] 5-7 websites approved by user with clear reasoning
- [ ] approved_sites.md created with complete documentation
- [ ] User explicitly approves website selection
- [ ] Ready to proceed to Phase 3 (Element Extraction)

## Error Handling
- If user dislikes most initial websites, refine search criteria more dramatically
- If user can't decide between similar sites, help with comparison analysis
- If user wants to revisit vision completely, update and restart search
- If no suitable websites found, expand search to adjacent industries

## Quality Guidelines
- Present websites as clickable links for easy user review
- Include brief, accurate descriptions of each site's key characteristics
- Don't bias user toward particular choices
- Capture user reasoning accurately for future reference
- Ensure approved sites provide diverse design inspiration

## Output Files
- `approved_sites.md` - Final approved website collection
- `vision_refinements.md` - All vision updates and reasoning
- `research_query_log.md` - Search terms and methods used
- `phase_2_completion.md` - Approval log and transition notes