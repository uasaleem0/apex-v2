---
name: apex-import
description: Import any existing project and determine its APEX phase, completeness, and next steps
---

# APEX Project Import System

**Usage**: `/apex-import [project-path]`

**Purpose**: Intelligently analyze any existing project to determine its current APEX development phase, implementation quality, and provide actionable next steps.

## Quick Import Commands

### **🔍 Analyze Current Directory**
```bash
/apex-import
```
**What it does**:
- Analyzes the current project directory
- Detects technology stack and architecture patterns
- Determines current APEX phase (Discovery → Requirements → Architecture → UI/UX → Development → Optimization)
- Provides immediate next action recommendations

### **📁 Analyze Specific Project**
```bash
/apex-import "/path/to/project"
```
**What it does**:
- Imports and analyzes project at specified path
- Works with any project type (web, mobile, desktop, API)
- Generates comprehensive APEX integration plan
- Identifies optimization opportunities

### **🚀 Quick Assessment Mode**
```bash
/apex-import --quick
```
**What it does**:
- Fast analysis focusing on immediate actions
- Identifies current development phase
- Shows top 3 priority improvements
- Provides specific APEX commands to run next

## Project Type Detection

### **Web Applications**
```yaml
detection_patterns:
  react_apps:
    indicators: [package.json with react, src/components/, public/]
    analysis_focus: Component architecture, state management, routing
    
  vue_apps:
    indicators: [package.json with vue, src/components/, vue.config.js]
    analysis_focus: Component structure, Vuex usage, build optimization
    
  angular_apps:
    indicators: [angular.json, src/app/, package.json with @angular]
    analysis_focus: Module organization, service architecture, TypeScript usage
    
  vanilla_web:
    indicators: [index.html, css/, js/, no major framework]
    analysis_focus: HTML structure, CSS organization, JavaScript patterns
```

### **Backend Services**
```yaml
detection_patterns:
  node_apis:
    indicators: [package.json with express/fastify, routes/, models/]
    analysis_focus: API design, database integration, middleware usage
    
  python_apps:
    indicators: [requirements.txt, app.py, django/flask imports]
    analysis_focus: Framework usage, database models, API structure
    
  php_apps:
    indicators: [composer.json, index.php, wordpress/laravel patterns]
    analysis_focus: Framework integration, database connections, security
```

### **Mobile Applications**
```yaml
detection_patterns:
  react_native:
    indicators: [package.json with react-native, ios/, android/]
    analysis_focus: Navigation, state management, native integrations
    
  flutter:
    indicators: [pubspec.yaml, lib/, android/, ios/]
    analysis_focus: Widget architecture, state management, platform integration
```

## APEX Phase Detection Logic

### **Phase 1: Discovery (0-20% Complete)**
```yaml
indicators:
  present:
    - Basic project structure exists
    - README with project description
    - Initial technology choices made
  
  missing:
    - Market research documentation
    - Competitive analysis
    - User persona definition
    - Business requirements clarity
  
  next_actions:
    - "@apex-analyst *research [domain]"
    - "Market opportunity analysis"
    - "Competitive landscape assessment"
```

### **Phase 2: Requirements (20-40% Complete)**
```yaml
indicators:
  present:
    - Business goals documented
    - Some feature lists or requirements
    - Basic user stories or use cases
  
  missing:
    - Comprehensive PRD (Product Requirements Document)
    - Detailed user stories with acceptance criteria
    - Technical requirements specification
    - Success metrics definition
  
  next_actions:
    - "@apex-pm *create-prd"
    - "@apex-pm *create-story"
    - "Requirements analysis and documentation"
```

### **Phase 3: Architecture (40-60% Complete)**
```yaml
indicators:
  present:
    - Basic codebase structure
    - Technology stack chosen
    - Some architectural decisions made
  
  missing:
    - Systematic architecture documentation
    - Bundle organization for parallel development
    - Scalability and performance considerations
    - Deployment and infrastructure planning
  
  next_actions:
    - "@apex-architect *analyze-existing-architecture"
    - "@apex-architect *create-bundle-structure"
    - "Architecture refactoring for APEX compatibility"
```

### **Phase 4: UI/UX (60-80% Complete)**
```yaml
indicators:
  present:
    - Working user interface
    - Basic styling and layout
    - Some user experience considerations
  
  missing:
    - Post-architecture UI positioning
    - Consistent design system
    - Accessibility compliance (WCAG)
    - User experience optimization
  
  next_actions:
    - "@apex-ux *audit-ui-consistency"
    - "@apex-ux *plan-post-architecture-refactor"
    - "UI/UX enhancement with Playwright validation"
```

### **Phase 5: Development (80-95% Complete)**
```yaml
indicators:
  present:
    - Core functionality implemented
    - Most features working
    - Basic testing in place
  
  missing:
    - Comprehensive quality gates
    - Automated testing and validation
    - Performance optimization
    - Production deployment readiness
  
  next_actions:
    - "@validation-gates *run-all-tests"
    - "claude build --resume"
    - "Quality assurance and optimization"
```

### **Phase 6: Optimization (95-100% Complete)**
```yaml
indicators:
  present:
    - Production-ready application
    - User analytics in place
    - Performance monitoring setup
  
  missing:
    - Autonomous optimization system
    - Continuous improvement cycles
    - Data-driven enhancement process
    - User behavior analysis automation
  
  next_actions:
    - "/apex-optimize weekly"
    - "Autonomous optimization setup"
    - "Continuous improvement implementation"
```

## Analysis Report Format

### **Instant Assessment Output**
```markdown
🔍 APEX PROJECT ANALYSIS RESULTS

📊 PROJECT OVERVIEW
Project: E-commerce Website
Type: React Web Application  
Current Phase: Architecture (45% complete)
Technology: React 18, Node.js, PostgreSQL
Repository: /Users/user/projects/my-shop

🎯 CURRENT STATUS
✅ Discovery: Market research complete, competitive analysis done
✅ Requirements: PRD exists, user stories documented  
🔄 Architecture: Basic structure present, needs APEX bundle organization
❌ UI/UX: Components exist but not post-architecture positioned
❌ Development: 60% feature complete, quality gates missing
❌ Optimization: No analytics or autonomous optimization

🚀 IMMEDIATE NEXT STEPS (High Priority)
1. Organize into APEX bundles for parallel development
   Command: @apex-architect *create-bundle-structure
   
2. Refactor UI with post-architecture positioning  
   Command: @apex-ux *plan-post-architecture-refactor
   
3. Set up quality gates and validation
   Command: @validation-gates *setup-quality-pipeline

📈 OPTIMIZATION OPPORTUNITIES
- Cart abandonment: 67% (high impact opportunity)
- Mobile conversion: 23% lower than desktop
- Page load time: 3.2s (should be < 2s)
- SEO optimization: Missing meta tags and schema

⚡ QUICK WINS (Can implement today)
- /apex-optimize analyze  # Set up optimization analysis
- /apex-note "Cart abandonment opportunity"  # Track insights
- @apex-ux *accessibility-audit  # Improve WCAG compliance

🎯 SUCCESS PROJECTION
With APEX implementation:
- Development velocity: +40% (parallel bundles)
- Code quality: B+ → A (systematic quality gates)  
- User conversion: +25% (autonomous optimization)
- Deployment frequency: 2x faster (automated validation)
```

## Integration Workflow

### **Step 1: Import Analysis**
```bash
/apex-import                    # Analyze current project
```

### **Step 2: Implement Recommendations**
```bash
# Follow the specific commands provided in analysis
@apex-architect *create-bundle-structure
@apex-ux *audit-ui-consistency
/apex-optimize weekly
```

### **Step 3: Track Progress**
```bash
/status                         # Monitor APEX integration progress
/apex-note "improvement insights"  # Track what's working
```

## Advanced Analysis Features

### **Technology Migration Assessment**
```yaml
migration_analysis:
  framework_compatibility:
    - Current framework APEX compatibility rating
    - Migration effort estimates for APEX optimization
    - Breaking change identification and mitigation
  
  architecture_refactoring:
    - Post-architecture UI positioning feasibility
    - Bundle organization recommendations
    - Parallel development enablement strategies
```

### **Performance Baseline**
```yaml
performance_analysis:
  current_metrics:
    - Page load times and Core Web Vitals
    - User interaction response times
    - Mobile vs desktop performance gaps
  
  optimization_potential:
    - Autonomous optimization impact estimates
    - Quick win performance improvements
    - Long-term optimization strategies
```

### **Business Impact Projection**
```yaml
business_analysis:
  conversion_opportunities:
    - User journey bottleneck identification
    - A/B testing setup recommendations
    - Revenue impact projections from APEX optimization
  
  development_efficiency:
    - Current development velocity assessment
    - APEX workflow efficiency improvements
    - Team productivity enhancement estimates
```

---

**🚀 Import any project and instantly know where you are in the APEX development lifecycle!**

**Start with `/apex-import` to see exactly what phase your project is in and what to do next.**

## Integration with Context Generation

When APEX import detects a project, it automatically:
1. **Analyzes the project** to determine industry and software type
2. **Triggers context generation** via @apex-context-generator
3. **Creates PROJECT_CONTEXT.md** with specialized workflows
4. **Provides next steps** using context-aware recommendations

This ensures every imported project immediately benefits from industry and software-type specialized workflows.