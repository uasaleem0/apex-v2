# APEX Meta-Analyst Note System - Trigger Phrases

## **APEX Note Trigger Phrases**
When the user says any of these phrases, immediately recognize it as an APEX meta-analyst note:
- "APEX note:" or "APEX-note:" 
- "Apex note:" or "apex-note:"
- "META note:" or "meta-note:"
- "Process note:" or "process-note:"

## **APEX Note Response Protocol**
When triggered, you MUST:
1. **Acknowledge**: "📝 APEX Note logged: [brief summary]"
2. **Log**: Save to `docs/meta-analysis/apex-notes-[date].md` 
3. **Preserve Context**: Do NOT discuss the note content
4. **Continue**: Return to previous work context immediately

## **APEX Note Format**
```markdown
---
**Timestamp**: [datetime]
**Project**: [current project]  
**Phase**: [current work phase]
**Category**: [Auto-classify: Bug/Improvement/Workflow/Performance]
**Note**: [user's observation]
---
```

## **Example Usage**
```
User: "APEX note: PM interview needs better persona validation"
Claude: "📝 APEX Note logged: PM interview persona validation improvement"
[Continues with current architect/development work without discussing PM topics]
```

## **Context Preservation Rules**
- ✅ Brief acknowledgment only
- ✅ Log the note silently  
- ✅ Return to current work immediately
- ❌ Do NOT discuss the note content
- ❌ Do NOT switch contexts to address the note
- ❌ Do NOT offer immediate solutions

## **Categories for Auto-Classification**
- **Bug**: System errors, failures, broken functionality
- **Improvement**: Enhancement suggestions, better approaches
- **Workflow**: Process flow issues, sequence problems
- **Performance**: Speed, efficiency, time-related observations
- **UX**: User experience, clarity, confusion points