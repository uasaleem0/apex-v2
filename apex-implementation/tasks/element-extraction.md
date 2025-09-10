# Element Extraction Task
**Agent**: Sally (@ux-expert)  
**Phase**: 3 of 6 - Systematic Element Extraction with Intelligent Tool Selection  
**Trigger**: Phase 2 (Website Research) completed with 5-7 approved sites

## Task Overview
Extract specific design elements from approved websites using intelligent tool selection (Playwright vs FireCrawl) and create comprehensive mood board for wireframe creation.

## Prerequisites
- Phase 2 completed: approved_sites.md exists with user reasoning
- 5-7 approved reference websites identified
- User ready for detailed element extraction

## Execution Steps

### 1. Element Identification Per Site
For each approved website, systematically extract user preferences:

```yaml
ELEMENT_EXTRACTION_PROCESS:
  per_site_questioning:
    format: |
      "For [Website Name], what specific elements do you want to extract?
      
      Consider these categories:
      - Navigation (header, menus, mobile nav)
      - Hero sections (layout, typography, CTAs)
      - Content layout (grids, cards, spacing)
      - Forms (contact, signup, styling)
      - Buttons (styles, states, animations)
      - Typography (fonts, hierarchy, sizing)
      - Color usage (palettes, gradients, accents)
      - Footer design
      - Interactive elements
      - Overall spacing/margins"

  expected_user_response_format: |
    "From Site A: Navigation style, pricing table design, footer layout
     From Site B: Hero section animation, button hover effects, typography hierarchy
     From Site C: Form styling, card grid layout, color gradients"

  documentation_requirement:
    - Record exact user specifications for each element
    - Note which site each element comes from
    - Identify priority elements (most important to user)
```

### 2. Intelligent Tool Selection
Determine optimal tool for each element extraction:

```yaml
TOOL_SELECTION_LOGIC:
  automatic_selection:
    static_elements:
      - Basic layouts, color schemes, typography
      - Simple forms, static content areas
      - Footer designs, basic navigation
      - tool: Playwright screenshots
      
    complex_elements:
      - Animated interactions, hover effects
      - Complex layouts with dynamic content
      - Multi-step forms, interactive components
      - Advanced navigation patterns
      - tool: Recommend FireCrawl MCP

  user_consultation:
    when_to_ask: "This element has complex animations/interactions. Should I use FireCrawl for deeper analysis?"
    factors: "FireCrawl provides code analysis but uses more tokens"
    user_override: "User can request specific tool regardless of recommendation"

  intelligent_defaults:
    - When in doubt, start with Playwright
    - Escalate to FireCrawl for clearly interactive elements
    - Ask user permission before using FireCrawl (token usage)
```

### 3. Element Extraction Execution
Execute extraction based on tool selection:

```yaml
PLAYWRIGHT_EXTRACTION:
  process:
    - Navigate to specific page sections
    - Capture high-quality screenshots of identified elements
    - Extract basic styling information (colors, fonts, spacing)
    - Document layout patterns and visual hierarchy
    
  output_per_element:
    - High-resolution screenshot
    - Basic style notes (colors, typography, spacing)
    - Layout description
    - User's reasoning for selection

FIRECRAWL_EXTRACTION:
  process:
    - Full site analysis including code structure
    - Interactive element behavior documentation
    - Animation and transition details
    - Complete styling and interaction patterns
    
  output_per_element:
    - Comprehensive code analysis
    - Interaction behavior documentation
    - Animation specifications
    - Implementation approach recommendations

  token_management:
    - Warn user about token usage before FireCrawl
    - Get explicit permission for each FireCrawl usage
    - Track cumulative token usage
```

### 4. Mood Board Creation
Organize extracted elements into comprehensive mood board:

```yaml
MOOD_BOARD_STRUCTURE:
  organization:
    - mood_board/navigation/ (all navigation elements)
    - mood_board/hero_sections/ (hero section examples)
    - mood_board/layouts/ (layout patterns and grids)
    - mood_board/components/ (buttons, forms, cards)
    - mood_board/typography/ (font examples and hierarchy)
    - mood_board/colors/ (color palettes and usage)
    - mood_board/interactions/ (animation and interaction examples)

  documentation_per_element:
    - Element source (which website)
    - User reasoning for selection
    - Technical notes (from Playwright or FireCrawl)
    - Implementation priority (high/medium/low)
    - Adaptation notes (how to fit user's brand)

  mood_board_summary:
    - Overall design direction
    - Key patterns identified
    - Priority elements for wireframes
    - Technical considerations for implementation
```

### 5. Analysis & Wireframe Preparation
Prepare extracted elements for wireframe phase:

```yaml
ANALYSIS_OUTPUT:
  design_patterns_identified:
    - Common layout approaches across selected elements
    - Typography hierarchy patterns
    - Color usage patterns
    - Navigation patterns
    - Content organization approaches

  wireframe_guidance:
    - Priority elements for each page type
    - Layout patterns to apply
    - Component specifications
    - Brand adaptation requirements

  technical_notes:
    - Animation requirements
    - Interactive element specifications
    - Responsive considerations
    - Implementation complexity notes
```

## Success Criteria
- [ ] All approved websites analyzed for specific elements
- [ ] User has specified exact elements to extract from each site
- [ ] Appropriate tool selection (Playwright vs FireCrawl) for each element
- [ ] Comprehensive mood board created with organized elements
- [ ] Analysis completed for wireframe phase preparation
- [ ] User approves mood board as complete design foundation
- [ ] Ready to proceed to Phase 4 (Wireframe Creation)

## Error Handling
- If user unclear about specific elements, provide category guidance
- If tool selection unclear, default to Playwright and escalate if needed
- If FireCrawl fails, fallback to Playwright with user notification
- If mood board overwhelming, organize by priority/page type
- Always get user approval before proceeding to next phase

## Quality Standards
- Screenshots must be high-resolution and clearly show design details
- Documentation must link each element to user's specific reasoning
- Mood board must be organized logically for wireframe reference
- Technical notes must be accurate and implementation-focused
- All tool usage must be transparent with token impact communicated

## Output Files
- `mood_board/` (organized folder with all extracted elements)
- `element_selections.md` (detailed list of user selections per site)
- `firecrawl_analysis.md` (comprehensive analysis when FireCrawl used)
- `wireframe_guidance.md` (summary for Phase 4 wireframe creation)
- `phase_3_completion.md` (approval log and transition documentation)