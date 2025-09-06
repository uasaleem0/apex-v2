<!-- Powered by BMAD™ Core -->

# Sally (UX Expert) - Enhanced Workflow Guide

## 🎯 **Sally's Role in BMAD Ecosystem**

**Position**: UI/UX Specialist with automated design validation  
**When**: After PM hands off requirements, before Architect begins technical design  
**Core Value**: Transforms user requirements into validated, accessible UI/UX specifications

## 📋 **Sally's Enhanced Capabilities**

### **Standard BMAD Commands** (Unchanged)
- `*help` - Show all available commands
- `*create-front-end-spec` - Create UI specification document  
- `*generate-ui-prompt` - Generate AI frontend prompts for v0/Lovable
- `*read-context` - Read PM handoff requirements
- `*write-context` - Pass specifications to Architect
- `*exit` - Complete UX work and hand off

### **NEW: Playwright Integration Commands**
- `*design-review` - **Execute comprehensive automated UI/UX validation**
- `*self-reflect` - **Iterative improvement loop with live testing**  
- `*accessibility-audit` - **WCAG AA+ compliance validation**

## 🔄 **Sally's New Workflow Order**

### **Phase 1: Requirements Analysis** (Standard BMAD)
1. **`*read-context`** - Understand PM requirements and user stories
2. **`*create-front-end-spec`** - Create initial UI/UX specifications
3. **`*generate-ui-prompt`** - Generate AI prompts for rapid prototyping

### **Phase 2: Design Validation** (NEW - Playwright Integration)
4. **`*design-review`** - Execute automated design assessment:
   - Visual hierarchy validation
   - Brand consistency (Wisdom Practice guidelines)
   - Responsive design testing
   - Interaction pattern verification
   - Performance baseline measurement

### **Phase 3: Self-Reflection Loop** (NEW - Iterative Improvement)
5. **`*self-reflect`** - Live UI testing and improvement:
   - Playwright MCP validates actual implementation
   - Identifies accessibility barriers
   - Tests responsive behavior across devices
   - Measures Core Web Vitals
   - Generates improvement recommendations

### **Phase 4: Accessibility Validation** (NEW - WCAG Compliance)
6. **`*accessibility-audit`** - Comprehensive accessibility review:
   - WCAG 2.1 AA+ compliance testing
   - Keyboard navigation validation
   - Screen reader compatibility
   - Color contrast verification
   - Touch target size validation

### **Phase 5: Handoff** (Enhanced BMAD)
7. **`*write-context`** - Pass validated specifications to Architect:
   - UI/UX specifications with validation results
   - Accessibility compliance documentation
   - Performance requirements and baselines
   - Brand guideline implementation notes

## 🔗 **BMAD Integration Points**

### **Receives From PM**
```yaml
pm_handoff_context:
  - User stories with acceptance criteria
  - Business requirements and constraints
  - Target audience and user personas  
  - Brand guidelines and style requirements
```

### **Passes to Architect**
```yaml
ux_handoff_context:
  - Validated UI/UX specifications
  - Component library requirements
  - Accessibility compliance documentation
  - Performance budgets and requirements
  - Design system implementation guide
  - Playwright test results and baselines
```

### **Story Integration**
- **Acceptance Criteria Enhancement**: Adds UI/UX validation requirements to stories
- **Definition of Done**: Includes design validation and accessibility compliance  
- **Quality Gates**: Automated Playwright tests prevent regression

## 📁 **File Dependencies (Streamlined)**

### **Tasks** (`/tasks/`)
- `create-doc.md` - Standard BMAD document creation
- `execute-checklist.md` - Standard BMAD checklist execution
- `generate-ai-frontend-prompt.md` - AI prompt generation (existing BMAD)
- `playwright-design-review.md` - **NEW** Automated design validation
- `accessibility-validation.md` - **NEW** WCAG compliance testing

### **Templates** (`/templates/`)
- `design-review-report.yaml` - **NEW** Standardized validation report

### **Checklists** (`/checklists/`)  
- `ui-quality-checklist.md` - **NEW** Comprehensive UI validation
- `accessibility-checklist.md` - **NEW** WCAG compliance checklist

### **Data** (`/data/`)
- `design-review-criteria.md` - **NEW** Scoring framework and brand guidelines

## ⚡ **Token Efficiency Features**

### **Automated Reporting**
- Template-based output reduces manual token usage
- Standardized YAML format for consistent results
- Priority-based issue reporting (critical → low)

### **Smart Scoping**  
- Component-level testing prevents unnecessary work
- Incremental validation builds on previous results
- Change detection only re-tests modified elements

### **Contextual Integration**
- Wisdom Practice brand guidelines auto-applied
- BMAD story context leveraged for targeted validation
- Progressive complexity based on project maturity

## 🚨 **No Conflicts or Issues**

### **✅ File Resolution Fixed**
- Removed references to missing `technical-preferences.md`
- Removed references to missing `front-end-spec-tmpl.yaml`  
- All dependencies now exist in `bmad-implementation/`

### **✅ BMAD Harmony Maintained**
- Standard BMAD activation process unchanged
- Existing command structure preserved
- Agent handoff protocols enhanced, not replaced
- Story-driven development workflow intact

### **✅ Backward Compatibility**
- All existing Sally functionality preserved
- No breaking changes to BMAD system
- Enhanced capabilities are additive only
- Team can adopt new features gradually

## 🎭 **Usage Examples**

### **Standard BMAD Flow (Unchanged)**
```bash
@ux-expert
*read-context
*create-front-end-spec  
*write-context
*exit
```

### **Enhanced Flow with Validation**
```bash
@ux-expert
*read-context
*create-front-end-spec
*design-review          # NEW - Automated validation
*self-reflect           # NEW - Iterative improvement  
*accessibility-audit    # NEW - WCAG compliance
*write-context
*exit
```

### **Slash Command for Quick Reviews**
```bash
/design-review          # Instant comprehensive validation
/design-review component [name]  # Targeted component review
/design-review accessibility     # WCAG-focused audit
```

## 📊 **Quality Gates Enhanced**

### **Pre-Enhancement** (Standard BMAD)
- Manual UX review and specification
- Subjective design assessment
- Basic accessibility considerations

### **Post-Enhancement** (Playwright Integration)  
- **Automated design validation** with objective scoring
- **Live UI testing** with real browser validation
- **WCAG AA+ compliance** with automated testing
- **Self-reflection loop** with iterative improvement
- **Brand consistency** automatically enforced

## 🔄 **Integration with Existing BMAD Agents**

### **PM → Sally Handoff** (Enhanced)
- PM provides stories and requirements (unchanged)
- Sally validates and enhances with UI/UX criteria (NEW)

### **Sally → Architect Handoff** (Enhanced)  
- Sally provides specifications (unchanged)
- Plus validation results and accessibility documentation (NEW)

### **Quality Assurance** (Enhanced)
- Standard BMAD quality gates maintained
- Plus automated design validation requirements (NEW)

---

**Sally is now the most sophisticated UX agent in your BMAD ecosystem** - combining human creativity with automated validation to ensure perfect UI/UX outcomes while maintaining seamless integration with your existing story-driven development workflow.

**Next Steps**: Simply use `@ux-expert` as before, but now with powerful new `*design-review`, `*self-reflect`, and `*accessibility-audit` commands available when you need comprehensive validation.