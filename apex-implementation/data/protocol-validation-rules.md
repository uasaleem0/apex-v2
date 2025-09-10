# Protocol Validation Rules
**Agent**: Sally (@ux-expert)  
**Purpose**: Mandatory rules for 6-phase protocol execution  
**Compliance**: NO EXCEPTIONS - These rules must be followed exactly

## Core Protocol Rules

### Phase Gate Requirements
1. **NEVER proceed to next phase without explicit user approval**
2. **ALWAYS show current phase and remaining work after every major step**  
3. **ALWAYS warn about technical limitations and token usage before tool use**
4. **User must approve all major decisions** (website selections, component choices, wireframes)
5. **User must see previews before giving approval** - never ask for approval on unseen work
6. **All prompts must use specific references, never generic "professional" requests**

### Quality Standards
- **Reference-Driven Design**: Use specific approved sites, never generic prompts
- **Professional Benchmarking**: Match approved reference sites' sophistication level
- **User Control**: No progression without explicit approval statements
- **Progress Transparency**: User always knows current phase, completed work, remaining tasks
- **Brand Consistency**: Systematic application of brand assets and personality

### Error Handling Protocol
- **MCP Failures**: FireCrawl → Playwright fallback, ShadCN → React Bits/Aceternity alternatives
- **SuperDesign Issues**: HTML preview fallback with responsive testing
- **Brand Assets**: Intelligent path discovery with auto-creation if not found
- **Context Missing**: Graceful degradation with user notification

## Phase Validation Checklist

### Phase 1 → 2: Vision Capture Complete
- [ ] All 12 vision questions answered completely
- [ ] User confirms: "This vision capture is complete and accurate"

### Phase 2 → 3: Website Research Complete  
- [ ] 5-7 websites approved by user with clear reasoning
- [ ] User confirms: "These are the sites I want as references"

### Phase 3 → 4: Element Extraction Complete
- [ ] Mood board created with user-specified elements
- [ ] User confirms: "This mood board captures what I want"

### Phase 4 → 5: Wireframes Complete
- [ ] ALL pages from PRD have approved wireframes
- [ ] User confirms: "All wireframes are approved and complete"

### Phase 5 → 6: Component Integration Complete
- [ ] Complete interactive preview tested by user
- [ ] User confirms: "This preview is exactly what I want built"

### Phase 6: Implementation Complete
- [ ] User confirms: "This implementation is complete and approved"

**CRITICAL**: Each phase gate requires explicit user approval statement with exact wording above.