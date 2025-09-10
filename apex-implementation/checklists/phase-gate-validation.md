# Phase Gate Validation Checklist
**Agent**: Sally (@ux-expert)  
**Purpose**: Ensure no phase progression without explicit user approval  
**Critical Rule**: NEVER proceed to next phase without completing ALL validations

## Phase 1 → Phase 2 Gate
**Validation: Vision Capture → Website Research**

### Required Completions
- [ ] All 12 vision questions answered completely
- [ ] vision_input.md created and populated
- [ ] vision_evolution.md initialized for tracking
- [ ] research_criteria.md prepared

### User Approval Requirements
- [ ] User has reviewed all captured vision responses
- [ ] User confirms accuracy of all information
- [ ] User explicitly states: "This vision capture is complete and accurate"
- [ ] Approval logged with timestamp in vision_input.md

### Phase Gate Confirmation
- [ ] Sally confirms: "All Phase 1 requirements met"
- [ ] User confirms: "Approved to proceed to Phase 2 (Website Research)"
- [ ] Ready to begin website research process

---

## Phase 2 → Phase 3 Gate
**Validation: Website Research → Element Extraction**

### Required Completions
- [ ] 10-12 initial websites researched and presented
- [ ] User feedback collected for all presented websites
- [ ] Vision refined based on user feedback patterns
- [ ] 5-7 websites approved by user with clear reasoning
- [ ] approved_sites.md created with user reasoning for each site

### User Approval Requirements
- [ ] User has reviewed all approved websites
- [ ] User provided specific reasoning for each approved site
- [ ] User explicitly states: "These are the 5-7 sites I want as references"
- [ ] User confirms: "I understand these will be used for element extraction"
- [ ] Approval logged in approved_sites.md

### Phase Gate Confirmation
- [ ] Sally confirms: "All Phase 2 requirements met"
- [ ] User confirms: "Approved to proceed to Phase 3 (Element Extraction)"
- [ ] Ready to begin systematic element extraction

---

## Phase 3 → Phase 4 Gate
**Validation: Element Extraction → Wireframe Creation**

### Required Completions
- [ ] All approved websites analyzed for specific elements
- [ ] User specified exact elements to extract from each site
- [ ] Appropriate tool selection documented (Playwright vs FireCrawl)
- [ ] mood_board/ folder created with organized elements
- [ ] element_selections.md completed with user specifications
- [ ] wireframe_guidance.md prepared for Phase 4

### User Approval Requirements
- [ ] User has reviewed complete mood board organization
- [ ] User confirms all extracted elements match their specifications
- [ ] User explicitly states: "This mood board captures what I want"
- [ ] User confirms: "Ready to use these elements for wireframes"
- [ ] Approval logged in phase_3_completion.md

### Phase Gate Confirmation
- [ ] Sally confirms: "All Phase 3 requirements met"
- [ ] User confirms: "Approved to proceed to Phase 4 (Wireframe Creation)"
- [ ] Ready to begin systematic wireframe creation

---

## Phase 4 → Phase 5 Gate
**Validation: Wireframe Creation → Component Integration**

### Required Completions
- [ ] ALL pages from PRD sitemap have approved wireframes
- [ ] Each page approved individually by user
- [ ] approved_wireframes/ contains HTML files for each page
- [ ] design_system.json created from approved wireframe patterns
- [ ] Progress tracking maintained throughout process

### User Approval Requirements
- [ ] User approved each individual page wireframe
- [ ] User reviewed complete wireframe collection
- [ ] User confirms design_system.json accuracy
- [ ] User explicitly states: "All wireframes are approved and complete"
- [ ] User confirms: "Ready to proceed to Component Integration"
- [ ] Final approval logged in phase_4_completion.md

### Page-by-Page Validation (ALL Required)
For each page in PRD sitemap:
- [ ] [Page Name]: Wireframe created and user approved
- [ ] [Page Name]: Wireframe created and user approved
- [ ] [Page Name]: Wireframe created and user approved
- [ ] (Continue for ALL pages)

### Phase Gate Confirmation
- [ ] Sally confirms: "All Phase 4 requirements met for ALL pages"
- [ ] User confirms: "All wireframes approved - proceed to Phase 5"
- [ ] Ready to begin component integration

---

## Phase 5 → Phase 6 Gate
**Validation: Component Integration → Implementation**

### Required Completions
- [ ] All required components identified and documented
- [ ] Professional components selected using ShadCN MCP
- [ ] Complete component library created (approved_components/)
- [ ] All components integrated into SuperDesign preview
- [ ] Full interactive website preview functional
- [ ] User testing completed with refinements made
- [ ] component_library.json finalized
- [ ] implementation_specifications.md prepared

### User Approval Requirements
- [ ] User tested complete interactive preview
- [ ] User confirmed all interactions work as expected
- [ ] User confirmed professional quality matches vision
- [ ] User explicitly states: "This preview is exactly what I want built"
- [ ] User confirms: "Ready to proceed to final implementation"
- [ ] Final approval logged in phase_5_completion.md

### SuperDesign Preview Validation
- [ ] All pages connected with working navigation
- [ ] All interactive elements functional
- [ ] Responsive design works on mobile and desktop
- [ ] Animations smooth and professional
- [ ] Brand styling consistent throughout

### Phase Gate Confirmation
- [ ] Sally confirms: "All Phase 5 requirements met"
- [ ] User confirms: "Preview approved - proceed to Phase 6 Implementation"
- [ ] Ready to begin final implementation

---

## Phase 6 Completion Validation
**Final Implementation Approval**

### Implementation Completion
- [ ] Implementation strategy appropriate for project size
- [ ] Production-ready code following quality standards
- [ ] Perfect match to approved SuperDesign preview
- [ ] All responsive design functional across devices
- [ ] Performance optimized (Core Web Vitals compliant)
- [ ] Accessibility compliant (WCAG AA minimum)
- [ ] Cross-browser compatibility verified

### Final User Approval Requirements
- [ ] User conducted comprehensive final testing
- [ ] User confirmed implementation matches approved preview
- [ ] User satisfied with professional quality achieved
- [ ] User explicitly states: "This implementation is complete and approved"
- [ ] Final approval logged in final_approval.md

### Project Completion Confirmation
- [ ] Sally confirms: "All Phase 6 requirements met"
- [ ] User confirms: "Project complete - implementation approved"
- [ ] Documentation handoff completed

---

## Critical Protocol Rules

### NEVER Proceed Without:
1. **Explicit User Approval**: User must clearly state approval for each phase
2. **Complete Documentation**: All required files must exist and be populated
3. **Phase Gate Validation**: ALL checklist items must be completed
4. **Timestamp Logging**: All approvals must be logged with timestamps

### Always Required:
1. **Status Transparency**: User always knows current phase and remaining work
2. **Warning Communication**: All potential issues communicated upfront
3. **Quality Validation**: Each phase meets professional standards
4. **Iterative Refinement**: User feedback incorporated before proceeding

### Emergency Procedures:
- If phase gate validation fails: STOP and resolve issues before proceeding
- If user approval missing: DO NOT proceed until explicit approval received
- If quality standards not met: Iterate until standards achieved
- If technical issues prevent progress: Warn user and provide alternatives