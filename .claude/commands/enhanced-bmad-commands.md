# Enhanced BMAD Command Reference

## 🎯 **Core Workflow Commands**

### **Project Status & Navigation**
```bash
/status                 # Main dashboard - Complete project overview
/bundles               # List all bundles and their current status  
/bundle [A/B/C]        # Switch to specific bundle context
/bundle current        # Show current active bundle details
```

### **Review & Feedback Management**
```bash
/review [bundle]       # Start comprehensive review of completed bundle
/review status         # Show all bundles awaiting your review
/feedback [bundle]     # Continue previous review session
```

### **Development Tracking**
```bash
/sprint status         # Current sprint progress across all bundles
/sprint history        # Completed sprints and their outcomes
/story [id]           # Detailed status of specific story
/agents               # Show active agents and their current tasks
```

### **Dynamic Feature Addition**
```bash
/add-feature "description"    # Add new feature with intelligent routing
/feature status              # Track analysis of recently added features
```

## 🤖 **Agent Activation Commands**

### **Core Development Agents**
```bash
@analyst              # Mary - Market research and discovery
@pm                   # John - PRD creation and story management  
@architect            # Winston - System architecture and dependencies
@ux-expert           # Sally - Post-architecture UI/UX design and validation
@bmad-enhanced-qa    # Enhanced QA - Security and technical testing
```

### **Specialized Support Agents**
```bash
@bmad-orchestrator   # Master coordination and workflow guidance
@bmad-checkpoint-agent # State management and recovery
```

## 📊 **Enhanced Agent Capabilities**

### **Sally (UX Expert) - Revolutionary Upgrade**
```yaml
new_position: "Post-architecture for optimal UI decisions"
playwright_integration: "Real-time UI validation and testing"
self_reflection_loop: "Automated testing → feedback → iteration"
accessibility_validation: "WCAG AA+ compliance built-in"
brand_integration: "Wisdom Practice guidelines auto-applied"

commands:
  - "*design-review" - Comprehensive UI validation for story
  - "*validate-story" - Playwright validation on implementation
  - "*iterate-feedback" - Specific improvement feedback to developer
  - "*sign-off-story" - Approve story UI as complete
  - "*accessibility-audit" - WCAG compliance validation
```

### **Enhanced QA - Security & Validation**
```yaml
security_integration: "Semgrep MCP with 2000+ vulnerability rules"
visual_testing: "Playwright MCP for cross-browser validation"
performance_testing: "Core Web Vitals and load testing"

commands:
  - "*validate-story {story-id}" - Complete story validation
  - "*security-scan {story-id}" - Vulnerability analysis
  - "*visual-validation {story-id}" - UI consistency testing
  - "*performance-test {story-id}" - Performance validation
```

## 🔄 **Workflow Integration Examples**

### **Complete Bundle Development Cycle**
```bash
# 1. Project Planning
@analyst              # Market research and discovery
*research "target market analysis"
*exit

@pm                   # Requirements and story creation
*create-prd
*create-story
*write-context
*exit

@architect           # Architecture and bundle creation
*read-context
*create-fullstack-architecture
*write-context
*exit

# 2. Story-by-Story Development
@ux-expert           # UI specification (per story)
*read-context
*design-review
*write-context  
*exit

# Developer implements story...

@ux-expert           # UI validation
*validate-story
*iterate-feedback     # If changes needed
*sign-off-story      # When complete
*exit

@bmad-enhanced-qa    # Technical validation
*validate-story
*security-scan
*performance-test
*exit

# 3. Bundle Review
/status              # Check bundle completion
/review B            # User reviews Bundle B
# Provide feedback...

# 4. Continue with next bundle
/bundle C            # Switch to Bundle C
/sprint status       # Check development progress
```

### **Dynamic Feature Addition Flow**
```bash
# While Bundle B is in development...
/add-feature "user profile pictures with upload and cropping"

# System automatically:
# 1. Routes to @pm (John) for story creation
# 2. Routes to @architect (Winston) for dependency analysis  
# 3. Creates Bundle D if independent
# 4. Notifies when ready for development

/bundle D            # Switch to new bundle when ready
/status              # See Bundle D in planning status
```

### **Multi-Bundle Management**
```bash
# Monitor multiple bundles simultaneously
/status              # Overview of all bundles

# Example output shows:
# - Bundle A: Complete and deployed
# - Bundle B: Awaiting your review (high priority)  
# - Bundle C: Development in progress
# - Bundle D: Planning phase (new feature)

/review B            # Review Bundle B
# After review completion...

/bundle C            # Check Bundle C progress
/sprint status       # See Bundle C development status

/bundle D            # Plan Bundle D
@pm                  # Work with John on Bundle D requirements
```

## 🚀 **Advanced Workflow Features**

### **Parallel Bundle Development**
- Multiple bundles can be at different stages simultaneously
- Independent deployment of completed bundles
- No blocking dependencies between isolated bundles
- Efficient resource utilization across development teams

### **Iterative Perfection**
- Bundle-level iteration with multiple sprint cycles
- Story-level feedback and refinement
- Low-risk vs high-risk change categorization
- Seamless user feedback integration

### **Context-Aware Intelligence**
- System understands your current focus
- Smart notifications for priority items
- Automatic workflow routing based on complexity
- Preserved context across bundle switches

### **Quality Assurance Integration**
- Automated security scanning with Semgrep MCP
- Visual validation with Playwright MCP
- Accessibility compliance with WCAG AA+ standards
- Performance optimization with Core Web Vitals

## 💡 **Pro Tips for Maximum Efficiency**

### **Start Your Session**
```bash
/status              # Get complete project overview
# Identify priority actions from dashboard
# Use suggested commands for immediate next steps
```

### **Switch Context Seamlessly**
```bash
/bundle [A/B/C]      # Quick bundle switching
# Continue work exactly where you left off
# All context preserved automatically
```

### **Add Features Anytime**
```bash
/add-feature "any feature description"
# System handles all complexity
# No disruption to current work
# Intelligent placement in workflow
```

### **Monitor Progress Efficiently**
```bash
/agents              # See what's being worked on
/sprint status       # Development progress across bundles
/review status       # What needs your attention
```

---

**Enhanced BMAD delivers the perfect balance of automation and control, ensuring exceptional outcomes through systematic workflow management and intelligent agent coordination.**