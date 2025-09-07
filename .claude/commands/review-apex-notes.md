---
name: review-apex-notes  
description: Review and process accumulated APEX notes in dedicated meta-analyst session
---

# Review APEX Notes

**Usage**: Ask "Review my APEX notes" or "Process accumulated feedback"

**Purpose**: Dedicated meta-analyst session to review logged notes and implement improvements WITHOUT contaminating current work context.

## How This Works

### **During Work Sessions:**
```bash
# While in @architect mode
/apex-note "PM interview missed key user personas"
# → Logged silently, architect context preserved

# While in development  
/apex-note "Bundle system needs better progress indicators"
# → Logged silently, development continues
```

### **Dedicated Review Session:**
```bash
# Later, when ready to process feedback
"Review my APEX notes"
# → Switches to pure meta-analyst mode
# → Processes all accumulated notes
# → Suggests specific improvements
# → Creates action plan
```

## Meta-Analyst Review Process

When you request a review, the system:

1. **Context Switch**: Enters dedicated meta-analyst mode
2. **Note Analysis**: Reviews all logged observations  
3. **Pattern Recognition**: Identifies recurring issues
4. **Priority Ranking**: High/Medium/Low impact categorization
5. **Action Planning**: Specific steps to implement improvements
6. **Clean Separation**: No contamination of work sessions

## Sample Review Output

```markdown
# APEX Meta-Analysis Review - 2025-09-07

## Notes Processed: 7 observations
## Timespan: September 5-7, 2025

### 🔴 HIGH PRIORITY ISSUES
1. **PM Interview Depth** (3 mentions)
   - Issue: Insufficient user persona detail collection
   - Impact: Architecture decisions lack user-centric foundation
   - Action: Enhance PM agent with follow-up question logic

2. **Progress Visibility** (2 mentions)  
   - Issue: Bundle development lacks real-time progress
   - Impact: User uncertainty during long operations
   - Action: Implement progress bars (COMPLETED ✅)

### 🟡 MEDIUM PRIORITY
3. **Documentation Clarity**
   - Issue: Bundle concept confusing to new users
   - Action: Add visual diagrams to APEX guide

### ✅ IMPLEMENTATION PLAN
- [ ] Update @pm agent with deeper interview logic
- [ ] Add persona validation step to workflow  
- [ ] Create bundle concept visualization
- [x] Progress tracking system (completed)
```

## Context Preservation Benefits

### **Clean Work Sessions:**
- No interruptions during focused work
- Agent context stays pure and focused  
- Notes logged without breaking flow
- Maximum productivity maintained

### **Dedicated Improvement Time:**
- Full context on accumulated feedback
- Strategic view of system improvements
- Batch processing efficiency
- Proper change planning

## Usage Guidelines

### **When to Log Notes:**
```bash
❌ Don't interrupt current work with improvements
✅ Quick note: "/apex-note 'observation here'"

❌ Don't break architect focus with PM feedback  
✅ Log it: "/apex-note 'PM stage needs X improvement'"
```

### **When to Review Notes:**
- End of major work session
- Before starting new project
- Weekly improvement sessions
- When ready to make system changes

---

**This system preserves your brilliant insight about context contamination while ensuring systematic improvement of the APEX system.**