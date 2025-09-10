# Company Integration Engine
**Agent**: Sally (@ux-expert)  
**Purpose**: Automatic discovery and integration of company brand assets and context
**Type**: Smart discovery system with fallback handling

## Auto-Discovery System

### Company Data Discovery Pattern
```yaml
DISCOVERY_SEQUENCE:
  1. auto_detect_company: "Match project name/directory to company folders"
  2. search_brand_assets: "Scan for brand guidelines, assets, and context"
  3. extract_context: "Load company personality, positioning, and standards"
  4. apply_throughout: "Integrate company context into all phases"

SEARCH_LOCATIONS:
  primary: "uasaleem-companies/companies/[company-name]/"
  secondary: "[project-root]/brand_assets/"
  tertiary: "[project-root]/design/"
  fallback: "Create from vision capture"
```

### Company Context Structure
```yaml
EXPECTED_COMPANY_DATA:
  brand_guidelines.md:
    - color_palette: "Primary, secondary, semantic colors with hex codes"
    - typography: "Font families, weights, sizes, usage guidelines"  
    - logo_usage: "Placement, sizing, clear space, variations"
    - brand_personality: "Tone, voice, emotional attributes"
    
  target_audience.md:
    - primary_users: "Demographics, psychographics, behaviors"
    - user_needs: "Pain points, goals, motivations"
    - user_journey: "How users discover and engage"
    
  value_propositions.md:
    - unique_selling_proposition: "Primary differentiator"
    - key_benefits: "Core value delivered to users"
    - positioning_statement: "Market position and competitive advantage"
    
  quality_standards.md:
    - professional_level: "Expected quality tier (startup/enterprise/luxury)"
    - accessibility_requirements: "WCAG level, specific needs"
    - performance_expectations: "Speed, compatibility, optimization level"
```

### Smart Integration Points
```yaml
PHASE_1_INTEGRATION:
  vision_capture:
    - Pre-populate brand_personality from company data
    - Reference target_audience for user demographics
    - Apply quality_standards expectations
    - Use company industry_vertical for context
    
PHASE_2_INTEGRATION:
  website_research:
    - Weight research toward company's industry leaders
    - Filter references by company's professional_level
    - Consider company's competitive_positioning
    
PHASE_4_INTEGRATION:
  wireframe_creation:
    - Apply brand_guidelines colors and typography
    - Reference company target_audience needs
    - Align with company value_propositions hierarchy
    
PHASE_5_INTEGRATION:
  component_selection:
    - Match components to company quality_standards
    - Apply brand_guidelines styling systematically
    - Ensure accessibility meets company requirements
    
VALIDATION_INTEGRATION:
  all_phases:
    - Use company quality_standards for validation criteria
    - Apply company brand_guidelines for consistency checks
    - Reference company positioning for professional level validation
```

### Discovery Implementation
```yaml
STARTUP_DISCOVERY:
  company_detection:
    method: "Scan project path and name for company matches"
    example: "project: 'acme-website' → search: 'uasaleem-companies/companies/acme/'"
    
  brand_asset_loading:
    success: "Load all company context files, log found assets"
    partial: "Use available data, note missing elements"
    failure: "Create company context from vision capture, offer to save"
    
  context_application:
    automatic: "Apply discovered context to all relevant phases"
    validation: "Verify context accuracy with user during Phase 1"
    evolution: "Update company context based on project learnings"
```

### Fallback System
```yaml
NO_COMPANY_DATA_FOUND:
  action: "Create company context during vision capture"
  process:
    - Capture brand guidelines during vision questions
    - Document target audience insights
    - Define quality standards and professional level
    - Offer to save as company profile for future projects
    
PARTIAL_COMPANY_DATA:
  action: "Use available data, supplement with vision capture"
  process:
    - Load existing company assets
    - Fill gaps through enhanced vision questions
    - Update company profile with new information
    
COMPANY_DATA_MISMATCH:
  action: "User confirmation and context refinement"
  process:
    - Present discovered company context to user
    - Allow corrections and updates
    - Apply refined context throughout phases
```

## Usage Instructions

### Automatic Integration
1. **Startup**: Automatically scan for company data during agent activation
2. **Phase 1**: Pre-populate vision capture with company context
3. **All Phases**: Reference company standards for validation
4. **Quality Gates**: Apply company-specific professional requirements

### Manual Override
- User can specify different company context
- Company data can be updated during project execution
- New insights can be saved back to company profile

### Company Profile Evolution
```yaml
LEARNING_SYSTEM:
  capture: "Document successful design decisions and user preferences"
  update: "Refine company profile based on project outcomes"
  improve: "Enhanced context for future company projects"
```