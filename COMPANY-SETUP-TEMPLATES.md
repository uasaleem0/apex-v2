# Company Setup Templates for BMAD v2.0

## Template 1: brand/style-guide.md (REQUIRED)

```markdown
# [Company Name] Brand Style Guide

## Brand Identity
**Brand Essence**: [One sentence describing what your brand represents]
**Brand Personality**: [3-5 adjectives describing brand personality]

## Color Palette
| Color | Hex Code | Usage |
|-------|----------|--------|
| **Primary** | #000000 | [Main brand color usage] |
| **Secondary** | #000000 | [Secondary color usage] |  
| **Accent** | #000000 | [Accent color usage] |
| **Success** | #00FF00 | Success states, confirmations |
| **Warning** | #FFA500 | Cautions, important notices |
| **Error** | #FF0000 | Errors, destructive actions |

## Typography
- **Primary Font**: [Font name] ([clean/modern/professional etc.])
- **Secondary Font**: [Fallback font]
- **Mobile Optimization**: [Minimum font size for readability]

## Voice & Tone
- **[Adjective 1]**: [What this means for communication]
- **[Adjective 2]**: [What this means for messaging]
- **[Adjective 3]**: [What this means for content style]

## Visual Identity Principles
- **[Principle 1]**: [Design approach description]
- **[Principle 2]**: [Visual style description]
- **[Principle 3]**: [Brand differentiation approach]

## Logo Usage
- Use full logo on [light/dark] backgrounds
- Use icon mark for small spaces
- Maintain clear space equal to [X] logo height
- Never distort or alter proportions
```

## Template 2: business/target-audience.md (REQUIRED)

```markdown
# [Company Name] Target Audience

## Primary Persona: [Persona Name]
**Demographics**: [Age range, gender, location, device usage]

## Core Problem/Need
- **Surface Level**: [What they say they want]
- **Deeper Reality**: [What they actually need]
- **Hidden Struggle**: [Underlying challenge they may not articulate]

## Pain Points
1. **[Pain Point 1]**: [Description of specific frustration]
2. **[Pain Point 2]**: [Description of challenge they face]
3. **[Pain Point 3]**: [Description of unmet need]
4. **[Pain Point 4]**: [Description of barrier they encounter]

## Recognition Triggers ("That's Exactly Me" Moments)
- [Specific situation they identify with]
- [Common experience they recognize]
- [Pattern they see in themselves]
- [Challenge they struggle with]

## Behavioral Patterns
- **Platform Preference**: [Where they spend time - mobile/desktop/social etc.]
- **Content Consumption**: [How they prefer to learn/consume information]
- **Decision Making**: [How they make purchasing/commitment decisions]
- **Communication Style**: [How they prefer to be communicated with]

## Success Metrics (From Their Perspective)
- [What success looks like to them]
- [How they measure progress]
- [What outcomes they value most]
- [What transformation they seek]
```

## Template 3: business/value-proposition.md (REQUIRED)

```markdown
# [Company Name] Value Proposition

## Core Value Proposition
**"[One clear sentence describing the transformation you provide and how it's different]"**

## Unique Positioning
- **Not Another [Generic Category]**: [How you're different from typical solutions]
- **Beyond [Surface Approach]**: [How you go deeper than surface-level fixes]
- **[Unique Approach] Focus**: [Your specific methodology or angle]
- **[Key Differentiator]**: [What makes your approach unique]

## Key Differentiators

### 1. **[Differentiator 1 Name]**
- [How this differentiates you from competitors]
- [Why this matters to your audience]
- [Specific example or evidence]

### 2. **[Differentiator 2 Name]**
- [Unique approach description]
- [Benefit to customers]
- [How you deliver this differently]

### 3. **[Differentiator 3 Name]**
- [Special methodology or insight]
- [Results this produces]
- [Why others can't replicate this]

## Value Delivery Promise
**"[Specific outcome promise that addresses core pain point without overpromising]"**

## Business Model Alignment
- **Positioning**: [Premium/accessible/enterprise - matches audience sophistication]
- **Approach**: [How delivery method matches audience needs]
- **Results Focus**: [What results you focus on vs what others focus on]
- **Aesthetic Match**: [How brand feel matches audience expectations]

## Success Transformation
**From**: [Current frustrated state your audience experiences]
**To**: [Desired outcome state you help them achieve]
```

## Company Setup Validation Checklist

### ✅ Brand Context Complete
- [ ] Brand essence clearly defined
- [ ] Color palette with hex codes specified
- [ ] Typography choices documented
- [ ] Voice and tone guidelines established
- [ ] Visual identity principles outlined

### ✅ Business Context Complete  
- [ ] Primary persona demographics defined
- [ ] Core problem/need articulated
- [ ] 3-4 specific pain points identified
- [ ] Recognition triggers documented
- [ ] Behavioral patterns understood

### ✅ Value Proposition Complete
- [ ] Core value proposition in one sentence
- [ ] 3 key differentiators explained
- [ ] Unique positioning established
- [ ] Success transformation defined
- [ ] Business model alignment confirmed

### ✅ Directory Structure Ready
- [ ] companies/[company-name]/ created
- [ ] brand/ folder with style-guide.md
- [ ] business/ folder with required files
- [ ] projects/ folder ready for inheritance
- [ ] analytics/ folder prepared for data

## Company Setup Quality Gates

**Before allowing project creation:**
1. **Brand Inheritance Test**: Can agents load brand context without errors?
2. **Business Context Test**: Do agents understand target audience and value prop?
3. **Consistency Test**: Are brand and business contexts aligned?
4. **Completeness Test**: Are all required templates filled with real information?

## Example Setup Commands

```bash
# After creating documents manually
claude validate-company your-company-name
# Runs validation checks and reports missing information

claude test-company-context your-company-name  
# Tests that agents can properly load and use company context

claude create-first-project your-company-name
# Guides creation of first project to test inheritance system
```