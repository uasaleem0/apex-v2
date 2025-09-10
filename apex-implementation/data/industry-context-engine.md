# Industry Context Engine
**Agent**: Sally (@ux-expert)  
**Purpose**: Dynamic industry context application across all phases
**Type**: Formula-based intelligent system

## Context Application Formula

### Core Pattern
```yaml
CONTEXT_FORMULA: "[INDUSTRY] + [COMPANY_POSITIONING] + [PROJECT_TYPE] = CONTEXTUAL_REQUIREMENTS"

DYNAMIC_APPLICATION:
  validation_standards: "Apply {industry}_professional_standards to all quality gates"
  design_priorities: "Weight decisions toward {industry}_user_expectations" 
  prompting_context: "Reference {industry}_best_practices in all prompts"
  success_metrics: "Measure against {industry}_conversion_benchmarks"
```

### Industry Context Profiles

```yaml
FINTECH:
  trust_requirements: ["Security badges", "Compliance mentions", "Customer testimonials", "Regulatory trust signals"]
  visual_standards: ["Professional authority", "Clean data presentation", "Minimal cognitive load", "Clear hierarchy"]
  validation_extras: ["Trust indicators visible?", "Security messaging clear?", "Regulatory compliance evident?"]
  conversion_focus: ["Trust-building", "Risk mitigation", "Clear value demonstration"]
  
HEALTHTECH:
  credibility_requirements: ["Medical credentials", "Privacy assurance", "Accessibility compliance", "Human-centered messaging"]
  visual_standards: ["Trustworthy professionalism", "Accessible design", "Empathetic tone", "Clear navigation"]
  validation_extras: ["HIPAA compliance visible?", "Accessibility tested?", "Medical credibility evident?"]
  conversion_focus: ["Trust establishment", "Privacy assurance", "Clear patient benefits"]
  
SAAS:
  conversion_requirements: ["Clear value proposition", "Feature benefits", "Trial/demo CTAs", "Social proof"]
  visual_standards: ["Modern efficiency", "Benefit-focused", "Conversion-optimized", "User journey clarity"]
  validation_extras: ["Value prop clear in 5 seconds?", "CTA prominent?", "Benefits > features?"]
  conversion_focus: ["Quick value demonstration", "Friction reduction", "Trial conversion"]

ECOMMERCE:
  trust_requirements: ["Product trust signals", "Secure checkout indicators", "Return policies", "Customer reviews"]
  visual_standards: ["Product-focused", "Purchase-optimized", "Trust-building", "Clear pricing"]
  validation_extras: ["Product images high quality?", "Checkout process clear?", "Trust signals visible?"]
  conversion_focus: ["Purchase confidence", "Product clarity", "Checkout optimization"]

CREATIVE_AGENCY:
  portfolio_requirements: ["Visual impact", "Creative differentiation", "Process transparency", "Client results"]
  visual_standards: ["Creative excellence", "Portfolio-focused", "Unique personality", "Visual storytelling"]
  validation_extras: ["Creative work prominently featured?", "Unique brand personality evident?"]
  conversion_focus: ["Creative credibility", "Process confidence", "Result demonstration"]
```

### Project Type Modifiers

```yaml
WEBSITE_MODIFIER:
  focus_areas: ["Content presentation", "SEO optimization", "Conversion funnels", "Marketing effectiveness"]
  success_metrics: ["Traffic conversion", "Content engagement", "Lead generation", "Brand perception"]
  
APP_MODIFIER:
  focus_areas: ["User workflows", "Interface efficiency", "Feature hierarchy", "User onboarding"]
  success_metrics: ["User activation", "Feature adoption", "Retention rates", "Task completion"]
  
SOFTWARE_MODIFIER:
  focus_areas: ["Tool efficiency", "Data visualization", "Workflow optimization", "User productivity"]
  success_metrics: ["Task efficiency", "User productivity", "Feature utilization", "User satisfaction"]
```

## Usage Instructions

### Automatic Context Application
1. **Phase 1**: Auto-detect industry from vision capture keywords
2. **All Phases**: Apply industry context to validation criteria
3. **Prompting**: Inject industry best practices into all design prompts
4. **Quality Gates**: Use industry-specific professional standards

### Context Override
- User can specify different industry context if auto-detection incorrect
- Multiple industry contexts can be combined (e.g., "FinTech SaaS")
- Context can be refined based on company positioning

### Integration Points
```yaml
VISION_CAPTURE: "Pre-populate with industry-relevant examples"
WEBSITE_RESEARCH: "Weight research toward industry leaders"
ELEMENT_EXTRACTION: "Focus on industry-appropriate patterns"
WIREFRAME_CREATION: "Apply industry UX best practices"
COMPONENT_INTEGRATION: "Select components meeting industry standards"
VALIDATION: "Use industry-specific quality criteria"
```