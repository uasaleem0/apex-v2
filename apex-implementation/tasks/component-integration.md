# Component Integration Task
**Agent**: Sally (@ux-expert)  
**Phase**: 5 of 6 - Component Integration & SuperDesign Preview  
**Trigger**: Phase 4 completed with all wireframes approved

## Task Overview
Build professional component library using ShadCN MCP, integrate with wireframes in SuperDesign, create complete interactive preview for final approval.

## Prerequisites
- approved_wireframes/ and design_system.json exist
- SuperDesign extension functional
- ShadCN MCP server operational

## Execution Steps

### 1. Component Analysis
- Analyze all approved wireframes to identify every component type needed
- Categorize: Navigation, Content, Interactive, UI Elements, Specialized
- Prioritize: Core (required) → Enhanced (UX) → Optional (nice-to-have)

### 2. Professional Component Selection
For each component type:
1. **Use ShadCN MCP** with reference-driven prompts (see core-prompting-guide.md)
2. **Present 5 professional options** matching approved reference sites
3. **User selects preferred option** with reasoning
4. **Document selection** with brand customization notes

**Key Principle**: Always reference specific approved sites, never generic "professional" requests.

### 3. SuperDesign Integration
- **Replace wireframe placeholders** with selected components
- **Apply design_system.json styling** consistently
- **Add Framer Motion animations** from mood board
- **Implement responsive behavior** matching approved mobile references
- **Create fully interactive preview** with working navigation

**Progress Tracking**: Update user after each page integration with completion status.

### 4. Quality Validation & Testing
- **User tests complete preview**: Navigation, interactions, responsive design
- **Quality validation**: Does this match approved reference sites' polish level?
- **Iterative refinement**: Address feedback until user says "This preview is exactly what I want built"

**Final Approval Required**: "This preview represents exactly what I want the final website to be"

## Success Criteria
- [ ] All components selected using reference-driven methodology
- [ ] Complete interactive preview functional in SuperDesign
- [ ] Quality matches approved reference sites' sophistication
- [ ] User explicit approval for proceeding to implementation

## Error Handling
- **ShadCN MCP failure**: Use React Bits, Aceternity UI alternatives
- **SuperDesign issues**: HTML preview with inline CSS fallback
- **Component quality concerns**: Return to selection with different references

## Output Files
- `approved_components/` (component library)
- `superdesign_preview.html` (complete interactive preview)
- `phase_5_completion.md` (approval log)