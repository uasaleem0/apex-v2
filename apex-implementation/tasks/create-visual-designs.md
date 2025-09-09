# Create Visual Design Task
**Agent**: Sally (@ux-expert)  
**Stage**: UI Design - 3-Stage Approach  
**Auto-trigger**: After architect handoff, before implementation

## Task Overview
Automatically create comprehensive website designs using the 3-stage Python-to-HTML approach for token-efficient iteration.

## Prerequisites
- Architect context handoff completed (.claude/context/architect-to-ux.md exists)
- Project requirements defined in PRD
- Story details available
- Team ID configured for Figma API

## Execution Steps

### 1. Read Context & Requirements
```bash
# Sally automatically reads:
- .claude/context/architect-to-ux.md (technical specifications)
- Current story requirements from APEX context
- Project-level design requirements
```

### 2. 3-Stage Design Workflow (AUTOMATED)
```bash
# Sally automatically executes this workflow:

STAGE 1: Python Visual Draft
- Generates mockup image from APEX context
- Shows layout, colors, flow concept
- Token-efficient: single function call
- Output: project_mockup.png

STAGE 2: HTML/CSS Skeleton
- Creates interactive structure
- Live preview via Python Flask server
- Basic styling and layout
- Output: Hosted at localhost:5000

STAGE 3: Full Implementation  
- Complete website ready for development
- Production-ready code
- Full responsive design
- Output: Complete HTML/CSS/JS

# System generates:
- Visual mockups for rapid feedback
- Interactive prototypes
- Live preview capability
- Production-ready code
```

### 3. Design Creation Process
Sally creates designs in this order:
1. **Wireframes** - Layout structure and user flow
2. **Visual Mockups** - Colors, typography, spacing
3. **Component Library** - Reusable UI elements
4. **Responsive Views** - Mobile, tablet, desktop layouts

### 4. Context Handoff
Create `.claude/context/ux-to-dev.md` with:
- Figma file links
- Design system specifications
- Component requirements
- Accessibility notes
- Implementation priorities

### 5. Integration with APEX Flow
```yaml
trigger: after-architect-completion
automatic: true
outputs:
  - figma_designs: 
      wireframes: "figma.com/file/{wireframe-key}"
      mockups: "figma.com/file/{mockup-key}"  
      components: "figma.com/file/{components-key}"
  - context_file: ".claude/context/ux-to-dev.md"
  - design_references: "designs/{story-name}-design.json"
```

## Error Handling
- If Figma API fails: Fallback to image-based design references
- If team ID missing: Prompt user for configuration
- If story context incomplete: Request clarification before proceeding

## Success Criteria  
- [ ] Figma designs created and accessible
- [ ] Design references saved to project
- [ ] Context handoff file created
- [ ] Ready for Stage 2 implementation