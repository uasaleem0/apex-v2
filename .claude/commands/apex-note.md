---
name: apex-note
description: Record observations, bugs, improvements, and insights for APEX Meta Analysis
---

# APEX Meta-Analyst Note System

**Usage**: `/apex-note "your observation or issue"`

**Purpose**: Capture real-time insights, bugs, improvements, and system observations for continuous APEX system enhancement.

## Note Categories

### 🐛 **Bug Reports**
```bash
/bmad-note "Sally agent failed to validate story-3 - Playwright MCP timeout error"
/bmad-note "Bundle B status not updating after completion - check status.md logic"
/bmad-note "Dynamic feature addition routed to wrong bundle for payment features"
```

### 💡 **System Improvements**
```bash
/bmad-note "Need command to batch-update multiple story statuses"
/bmad-note "Bundle review process could use automated screenshot comparison"
/bmad-note "Story dependencies not clear in /status dashboard"
```

### 📊 **Performance Observations**
```bash
/bmad-note "Architecture phase taking 2x estimated time - need better templates"
/bmad-note "Playwright validation excellent - catching UI issues early"
/bmad-note "Parallel bundle development working perfectly - no conflicts"
```

### 🔄 **Workflow Insights**
```bash
/bmad-note "Post-architecture Sally positioning eliminated all UI conflicts"
/bmad-note "Users struggling with bundle concept - need better explanation"
/bmad-note "Validation gates preventing all deployment issues - 100% success rate"
```

### ⚡ **Usage Patterns**
```bash
/bmad-note "Most users skip validation step - need to make it more obvious"
/bmad-note "Feature requests peak during bundle review phases"
/bmad-note "Status dashboard most-used command - very successful"
```

## Automatic Processing

When you submit a note, the system:

1. **Timestamps** the observation with session context
2. **Categorizes** based on content analysis  
3. **Logs** to `docs/meta-analysis/bmad-notes-[date].md`
4. **Tracks patterns** for system optimization
5. **Surfaces insights** in monthly meta-analysis reports

## Meta-Analysis Integration

Notes feed into:
- **System Optimization**: Identify bottlenecks and inefficiencies
- **User Experience**: Track pain points and success patterns
- **Quality Metrics**: Monitor error rates and resolution patterns
- **Feature Development**: Prioritize improvements based on real usage
- **Documentation Updates**: Keep guides current with actual usage

## Note Processing Workflow

```yaml
note_intake:
  capture: Real-time user observation
  classify: Auto-categorize (bug/improvement/insight/usage)
  context: Add session info (bundle, agent, phase)
  store: Append to daily meta-analysis log
  
pattern_analysis:
  frequency: Weekly pattern identification
  trends: Monthly trend analysis
  insights: Quarterly system optimization recommendations
  
actionable_items:
  high_priority: Critical bugs and blockers
  medium_priority: UX improvements and optimizations  
  low_priority: Nice-to-have enhancements
  research_items: Need further investigation
```

## Sample Meta-Analysis Report Structure

```markdown
# BMAD Meta-Analysis Report - [Month Year]

## System Health Metrics
- Total Notes: 47
- Bug Reports: 8 (17%)
- Improvements: 21 (45%) 
- Performance: 12 (25%)
- Workflow: 6 (13%)

## Top Insights
1. Sally's post-architecture positioning eliminated 100% of UI conflicts
2. Bundle system enabled 3x parallel development efficiency
3. Validation gates achieved 98% first-time deployment success

## Action Items
### High Priority
- Fix Playwright timeout issues (3 reports)
- Improve bundle concept explanation in docs

### Medium Priority  
- Add batch story status updates
- Enhance /status dashboard clarity

### Research Needed
- Investigate peak feature request timing patterns
- Analyze optimal bundle size for different project types
```

---

**Start capturing your BMAD insights now with `/bmad-note "your observation"`**

Your notes drive continuous system improvement and help optimize the Enhanced BMAD experience for everyone!