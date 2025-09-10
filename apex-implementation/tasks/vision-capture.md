# Vision Capture Task
**Agent**: Sally (@ux-expert)  
**Phase**: 1 of 6 - Enhanced Vision Capture  
**Trigger**: User initiates UI design process after PRD completion

## Task Overview
Capture comprehensive design vision through systematic questioning and create foundation for website research phase.

## Prerequisites
- PRD document completed and available
- Brand assets folder exists (if available)
- Project requirements documented

## Execution Steps

### 1. Initial Setup
- Check for existing brand assets in company folder or project assets
- Read PRD to understand business requirements
- Initialize vision tracking documents

### 2. MANDATORY Vision Questions (All Required)
Execute in order - DO NOT skip any question:

```yaml
VISION_CAPTURE_FORM:
  1. detailed_aesthetic_vision:
     question: "What specific aesthetic vision do you have?"
     examples: "Modern SaaS, Creative Agency, E-commerce, Minimalist, Bold, Professional Corporate, etc."
     required: true

  2. target_audience:
     question: "Who is your target audience specifically?"
     examples: "Busy professionals, Creative teams, Enterprise clients, SMB owners, Students, etc."
     required: true

  3. color_preferences:
     question: "What are your color preferences?"
     note: "Reference brand assets folder if available, or specify new preferences"
     required: true

  4. avoid_list:
     question: "What aesthetic styles should I completely avoid?"
     examples: "No childish designs, no flashy colors, avoid corporate sterile look, etc."
     required: true

  5. industry_keywords:
     question: "What industry terms should I use when searching for reference websites?"
     examples: "fintech, healthtech, SaaS, e-learning, productivity tools, etc."
     required: true

  6. user_experience_priorities:
     question: "What UX priorities matter most to you?"
     examples: "Fast/Simple/Comprehensive/Visual-heavy/Data-heavy/Mobile-first, etc."
     required: true

  7. functionality_emphasis:
     question: "What should users notice first when they visit?"
     examples: "CTA buttons, product features, testimonials, navigation, hero content, etc."
     required: true

  8. competitor_examples:
     question: "Any competitors whose style you love or hate?"
     note: "Provide specific website names/URLs if known"
     required: true

  9. content_hierarchy:
     question: "What's most important to highlight on your site?"
     examples: "Product benefits, testimonials, features, pricing, about story, etc."
     required: true

  10. device_priority:
      question: "Device priority approach?"
      options: "Desktop-first, Mobile-first, or Equal priority"
      required: true

  11. conversion_goals:
      question: "What main action do you want users to take?"
      examples: "Sign up, purchase, contact, download, book consultation, etc."
      required: true

  12. brand_personality:
      question: "How should your brand personality feel?"
      examples: "Professional, Playful, Trustworthy, Innovative, Authoritative, Friendly, etc."
      required: true
```

### 3. Documentation Creation
Create required output files:

```bash
# Create vision documentation
- vision_input.md (all answers formatted)
- vision_evolution.md (for tracking refinements)
- research_criteria.md (search parameters for Phase 2)
```

### 4. Validation & User Approval
- Review all captured responses with user
- Make corrections as needed
- Get explicit approval: "This vision capture is complete and accurate"
- Log approval in vision_input.md with timestamp

### 5. Phase Gate Preparation
- Prepare research criteria based on vision
- Set expectations for Phase 2 (Website Research)
- Create research query parameters

## Success Criteria
- [ ] All 12 vision questions answered completely
- [ ] vision_input.md created and approved by user
- [ ] research_criteria.md prepared for Phase 2
- [ ] User explicitly approves vision capture
- [ ] Ready to proceed to Phase 2 (Website Research)

## Error Handling
- If user provides vague answers, ask specific follow-up questions
- If brand assets missing, document and proceed with user preferences
- If user unsure about competitors, help with industry research
- Never proceed without explicit user approval

## Output Files
- `vision_input.md` - Complete vision documentation
- `vision_evolution.md` - Refinement tracking  
- `research_criteria.md` - Phase 2 search parameters
- `phase_1_completion.md` - Approval log and next steps