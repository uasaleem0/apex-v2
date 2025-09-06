# 🚀 Enhanced BMAD Complete Command Reference
**Version 2.0 - Printable Reference Guide**

---

## 📋 **QUICK START WORKFLOW**

### **Phase 1: Discovery & Planning**
```bash
@analyst              # Mary - Market research and competitive analysis
*research "topic"     # Purpose: Understand market landscape and opportunities

@pm                   # John - PRD creation and story development  
*create-prd          # Purpose: Interactive PRD creation with complete requirements
*create-story        # Purpose: Individual story creation from requirements

@architect           # Winston - Technical architecture and bundle creation
*create-fullstack-architecture # Purpose: Complete system design with bundle organization
```

### **Phase 2: Validation & Preparation**
```bash
/status              # Purpose: Complete project dashboard with actionable insights
claude validate      # Purpose: Strategic validation with blocker detection
claude setup-project # Purpose: Complete PRD → Stories → MCP setup in one command
```

### **Phase 3: Development & Quality**
```bash
claude build         # Purpose: Autonomous implementation with checkpointing
/design-review       # Purpose: Automated UI/UX review with Playwright validation
claude fix           # Purpose: Apply security, accessibility, performance fixes
claude scan          # Purpose: Security vulnerability scan and secret detection
```

---

## 🎯 **ALL AGENTS & THEIR COMMANDS**

### **📊 Discovery & Analysis**
```bash
# MARY (Analyst Agent)
@analyst
*research "topic"                    # Market research and competitive analysis
*market-analysis "domain"           # Industry-specific market analysis
*user-research "target audience"    # User behavior and needs analysis
*competitive-analysis "competitors" # Competitive landscape assessment
```
**Purpose**: Understand market opportunities, user needs, and competitive landscape before building

### **📝 Product Management**
```bash
# JOHN (Product Manager Agent)  
@pm
*create-prd                         # Interactive PRD creation with stakeholder input
*create-story                       # Individual story creation from requirements
*validate-requirements              # Ensure requirements are complete and feasible
*prioritize-features                # Feature prioritization based on business value
*add-feature "description"          # Dynamic feature addition with workflow integration
```
**Purpose**: Transform business needs into detailed, actionable development requirements

### **🏗️ Technical Architecture**
```bash
# WINSTON (Architect Agent)
@architect  
*create-fullstack-architecture      # Complete system design with technology choices
*create-bundle-structure            # Organize stories into dependency-based bundles
*validate-technical-feasibility     # Ensure architecture can deliver requirements
*scale-assessment                   # Performance and scalability analysis
```
**Purpose**: Design robust, scalable technical foundation before UI decisions

### **🎨 UI/UX Excellence (Post-Architecture)**
```bash
# SALLY (UX Expert Agent) - Enhanced with Post-Architecture Positioning
@ux-expert
*validate-story "story-id"          # Story-by-story UI validation with full technical context
*iterate-feedback "story-id"        # UI refinement cycles with Playwright validation
*sign-off-story "story-id"          # Final story approval after quality validation
*accessibility-audit "component"   # WCAG AA+ compliance checking
*design-system-review               # Consistent design system validation
```
**Purpose**: Create perfect UI/UX with complete technical context, eliminating conflicts

### **🔍 Quality & Validation**
```bash
# ENHANCED QA (Enhanced QA Agent)
@bmad-enhanced-qa
*security-scan                      # Comprehensive security analysis with Semgrep MCP
*visual-validation "component"      # Automated visual regression testing
*performance-audit                  # Performance bottleneck identification
*technical-validation              # Code quality and standards compliance
```
**Purpose**: Ensure security, performance, and technical quality throughout development

### **✅ Validation Gates & Testing**
```bash
# VALIDATION GATES AGENT
@validation-gates
*run-all-tests                     # Execute complete test suite with coverage
*quality-gate-check               # Comprehensive quality validation
*fix-test-failures               # Iterative fix process for failing tests
*coverage-analysis               # Test coverage assessment and improvement
```
**Purpose**: Enforce quality standards and ensure all tests pass before completion

### **📖 Story & Documentation**
```bash
# STORY WRITER AGENT
@story-writer  
*auto-create-stories-from-prd     # Generate complete story set from PRD analysis
*create-epic-breakdown           # Organize stories into logical implementation epics
*validate-story-completeness     # Ensure stories contain all implementation context
```
**Purpose**: Create self-contained stories that eliminate context loss during development

### **🎯 Product Ownership**
```bash
# PRODUCT OWNER AGENT
@product-owner
*validate-business-alignment     # Ensure features align with business objectives  
*review-story-quality           # Validate story completeness before development
*requirements-consistency-check  # Check for scope creep and requirement drift
*acceptance-criteria-review     # Ensure testable acceptance criteria
```
**Purpose**: Maintain product vision and ensure business value delivery

### **📋 Project Analysis & MCPs**
```bash
# PROJECT ANALYZER AGENT
@project-analyzer
*analyze-project-requirements    # Industry analysis and technical requirements assessment
*auto-select-mcps               # Automatic MCP selection based on project domain
*generate-mcp-configuration     # Create .mcp.json with project-specific settings
*compliance-assessment          # Regulatory and compliance requirements analysis
```
**Purpose**: Strategic project analysis and automatic MCP integration for validation

### **🔧 Build Management & Checkpointing**
```bash
# BUILD MANAGER AGENT
@build-manager
*start-build-session           # Initialize build with progress tracking
*create-checkpoint            # Manual checkpoint during development
*resume-from-checkpoint       # Resume development from specific checkpoint
*build-progress-report        # Detailed build progress and time estimates
```
**Purpose**: Autonomous implementation with reliable progress tracking and resumption

---

## 🎮 **NAVIGATION & PROJECT MANAGEMENT**

### **📊 Status & Monitoring**
```bash
/status                        # Complete project dashboard with priority actions
/bundles                      # List all story bundles and their development status
/bundle [A/B/C]              # Switch between parallel bundle development contexts
/agents                      # Active agent status and current capabilities
/validation status           # Current validation state across all stories
/build status               # Development progress with time estimates
/sprint status              # Current sprint progress and completion metrics
/sprint history            # Historical sprint data and performance metrics
```
**Purpose**: Real-time visibility into project health, progress, and next actions

### **🔄 Bundle Management**
```bash
/review [bundle]             # Comprehensive user review of completed story bundles
/review status              # Show bundles awaiting review and feedback status
/feedback [bundle]          # Continue iterative review and improvement cycle
```
**Purpose**: Systematic review process with change categorization and quality control

### **➕ Dynamic Feature Addition**
```bash
/add-feature "description"   # Add new features anytime without workflow disruption
/feature-analysis "request"  # Analyze feature request and determine placement
/feature-status             # Show pending feature requests and their routing
```
**Purpose**: Seamless feature evolution without interrupting current development

---

## 🛠️ **UNIVERSAL CLAUDE COMMANDS**

### **🚀 Project Creation & Setup**
```bash
claude new-project <name> <type>     # Create project with BMAD-Lite story-driven development
claude bmad-full-setup              # Upgrade current project to full BMAD system  
claude setup-tokens                 # Interactive GitHub token configuration
claude update-foundation            # Update global foundation settings
claude setup-project               # Complete PRD → Stories → MCP setup in one command
```
**Purpose**: Initialize and configure projects with appropriate BMAD complexity level

### **🔍 Validation & Quality**
```bash
claude validate                     # Strategic validation with blocker detection and MCP integration
claude fix                         # Apply standard security, accessibility, performance fixes
claude scan                        # Security vulnerability scan and exposed secrets detection
```
**Purpose**: Ensure quality, security, and compliance before and during development

### **🏗️ Development & Build**
```bash
claude build                       # Autonomous implementation with checkpointing and progress logging
claude build --resume             # Resume development from most recent checkpoint  
claude map                        # Visual story breakdown and epic organization
```
**Purpose**: Automated development with full transparency and resumption capability

### **📊 Analysis & Reporting**
```bash
/design-review                     # Comprehensive automated UI/UX review with Playwright MCP
claude quick-commit "message"      # Add, commit with message
claude backup                     # Auto backup with timestamp and push
claude sync                       # Pull and push changes
```
**Purpose**: Design validation, version control, and project synchronization

---

## 📈 **WORKFLOW PHASES WITH COMMANDS**

### **🎯 Phase 1: Discovery (30-60 minutes)**
```bash
@analyst
*research "target market analysis"              # Market opportunity assessment
*competitive-analysis "key competitors"        # Competitive landscape
*user-research "primary user personas"         # User needs and behavior analysis
```
**Outcome**: Market understanding and opportunity validation

### **📋 Phase 2: Requirements (1-2 hours)**
```bash
@pm  
*create-prd                                   # Interactive PRD creation
*create-story                                # Individual story development
@project-analyzer
*analyze-project-requirements                # Industry analysis and MCP selection
*auto-select-mcps                           # Automatic MCP configuration
```
**Outcome**: Complete PRD and story set with strategic validation setup

### **🏗️ Phase 3: Architecture (45-90 minutes)**
```bash
@architect
*create-fullstack-architecture              # Technical system design
*create-bundle-structure                   # Story organization into bundles
*scale-assessment                          # Performance and scalability planning
```
**Outcome**: Robust technical foundation ready for UI decisions

### **🎨 Phase 4: UI/UX Design (Per Bundle)**
```bash
@ux-expert
*validate-story "story-1"                  # Story-by-story UI specification
*iterate-feedback "story-1"               # Refinement with Playwright validation
*sign-off-story "story-1"                 # Final approval after quality check
```
**Outcome**: Perfect UI/UX with complete technical integration

### **⚡ Phase 5: Development (Per Bundle)**
```bash
claude validate                           # Pre-development blocker detection
claude build                            # Autonomous implementation with checkpointing
@validation-gates
*run-all-tests                          # Quality gate enforcement
/review [bundle]                        # User review and feedback incorporation
```
**Outcome**: Production-ready bundle with comprehensive quality validation

### **🔄 Phase 6: Iteration & Deployment**
```bash
/review status                          # Check bundles awaiting review
/feedback [bundle]                      # Iterative improvement cycles
claude scan                            # Final security validation
claude fix                            # Apply any remaining standard fixes
```
**Outcome**: Deployed bundle meeting all quality standards

---

## 🎯 **SUCCESS METRICS TRACKING**

### **📊 Quality Metrics Commands**
```bash
/validation status                      # Current validation state across all components
/build status                          # Development progress with quality metrics
/sprint status                         # Sprint completion with quality indicators
claude validate                       # Strategic validation with comprehensive reporting
```

### **🔍 Performance Monitoring**
```bash
@performance-optimizer                 # Algorithm and resource optimization
@security-analyzer                    # Vulnerability analysis and OWASP compliance
/design-review                       # UI/UX performance and accessibility validation
```

### **📈 System Health**
```bash
/status                              # Complete project dashboard with health indicators
/agents                             # Active agent status and system capabilities
claude scan                         # Security and compliance health check
```

---

## 🚀 **ADVANCED USAGE PATTERNS**

### **⚡ Parallel Development**
```bash
/bundle A                           # Work on Bundle A (Foundation)
claude build                       # Build Bundle A
/bundle B                          # Switch to Bundle B (Business Logic)  
claude validate                    # Validate Bundle B readiness
/status                           # Monitor progress across all bundles
```

### **🔄 Iterative Refinement**
```bash
/review Bundle-A                    # Review completed bundle
/feedback Bundle-A                 # Apply feedback and iterate
@ux-expert
*iterate-feedback "story-3"        # Specific story refinement
*sign-off-story "story-3"         # Final approval
```

### **➕ Dynamic Feature Addition**
```bash
/add-feature "user profile customization"    # Add feature anytime
/feature-status                              # Check feature routing
/status                                     # See updated project status
```

---

## 🎉 **SYSTEM CAPABILITIES SUMMARY**

### **🎯 Perfect UI/UX Outcomes**
- Post-architecture positioning eliminates technical surprises
- Playwright MCP integration provides real-time validation
- Iterative refinement ensures pixel-perfect implementations
- WCAG AA+ accessibility compliance built-in

### **⚡ Efficient Parallel Development**  
- Bundle isolation prevents dependency conflicts
- Independent deployment of completed bundles
- Context switching between multiple development streams
- Resource optimization across parallel workflows

### **🔄 Dynamic Feature Evolution**
- Add features anytime without workflow disruption
- Intelligent routing and optimal placement
- Context-aware system adaptation
- Background processing prevents interruption

### **📊 Comprehensive Project Control**
- Real-time visibility with actionable insights
- Automated quality assurance throughout development
- Multiple feedback and refinement cycles
- Risk management with change categorization

---

**🎯 This reference covers ALL Enhanced BMAD capabilities across discovery, planning, architecture, UI/UX, development, quality assurance, and deployment phases.**

**🚀 Start with `/status` to see your project dashboard and begin your Enhanced BMAD journey!**

---
**Enhanced BMAD System v2.0 - Complete Command Reference**  
**Total Commands: 80+ across 10 specialized agents and universal workflows**