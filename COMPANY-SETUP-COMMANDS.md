# Company Setup Commands & Validation System

## 🚀 Company Setup Commands

### **Method 1: Guided Interactive Setup (Recommended)**
```bash
# Launch guided company setup interview
claude setup-company your-company-name

# This triggers interactive prompts covering:
# - Russell Brunson customer avatar framework
# - Value proposition and Big Domino identification  
# - Brand identity and competitive positioning
# - Quality validation at each step
```

### **Method 2: Template-Based Setup**
```bash
# Create company structure with templates
claude create-company-templates your-company-name

# Generates pre-filled templates with:
# - Interview questions embedded as comments
# - Examples from successful companies
# - Quality checklists for each section
```

### **Method 3: Import from Existing Business**
```bash
# Import from existing business documents/website
claude import-company your-company-name --source=website
claude import-company your-company-name --source=docs --path=/path/to/docs

# Analyzes existing materials and creates company context
# User reviews and refines imported information
```

---

## 🔍 Validation & Analysis Commands

### **Comprehensive Company Analysis**
```bash
# Run complete company setup analysis
claude analyze-company your-company-name

# Output:
# ✅ Completeness Score: 85/100
# ✅ Russell Brunson Framework Compliance: 90/100  
# ✅ Quality Assessment: 88/100
# ⚠️  Critical Gaps: 2 identified
# 📊 Enhancement Opportunities: 5 identified
# 🎯 Project Readiness: APPROVED with conditions
```

### **Specific Validation Tests**
```bash
# Test individual components
claude validate-brand your-company-name
claude validate-audience your-company-name  
claude validate-value-prop your-company-name

# Test framework compliance
claude test-brunson-compliance your-company-name
claude test-customer-avatar your-company-name
claude test-big-domino your-company-name
```

### **Quality Improvement Guidance**
```bash
# Get specific improvement recommendations
claude improve-company your-company-name --focus=recognition
claude improve-company your-company-name --focus=differentiation
claude improve-company your-company-name --focus=clarity

# Interactive improvement session
claude company-improvement-session your-company-name
```

---

## 📋 Validation Prompts Library

### **Recognition Validation Prompts**

#### **Target Audience Recognition Test**
```
I'm going to read you a target audience description. After hearing it, tell me:
1. Do you immediately think "that's exactly me" or "that's definitely not me"?
2. What specific phrases made you feel recognized (or not)?
3. What's missing that would make you feel more seen?

[Read target audience description]

Scoring:
- High Recognition (90-100%): Immediate strong identification
- Medium Recognition (70-89%): Some identification with reservations  
- Low Recognition (0-69%): Little to no identification
```

#### **Pain Point Resonance Test**
```
I'll describe some pain points. For each one, rate how much it resonates:
1. "I've never felt this way" (0 points)
2. "This sometimes applies to me" (1 point) 
3. "This definitely describes my experience" (2 points)
4. "This is exactly my biggest frustration" (3 points)

[Read each pain point]

Scoring:
- Total 12-15 points: High resonance (ready to use)
- Total 8-11 points: Medium resonance (needs refinement)
- Total 0-7 points: Low resonance (needs complete rework)
```

### **Differentiation Validation Prompts**

#### **Competitive Differentiation Test**
```
I'll describe a business solution. After hearing it, tell me:
1. What company/solution does this sound most like?
2. What makes this different from [top 3 competitors]?
3. Why would someone choose this over the obvious alternative?
4. What's unique about the approach/method?

[Read value proposition and approach]

Pass Criteria:
✅ Can't easily name a direct competitor match
✅ Clear differentiation from top alternatives  
✅ Unique approach/method identified
✅ Compelling reason to choose this option
```

#### **Category Creation Test**  
```
Complete this sentence: "We're not just another _______, we're _______."

Quality Assessment:
- **Category of One**: Creates entirely new category
- **Subcategory Leader**: Owns a specific niche within existing category
- **Better Alternative**: Improved version of existing solution
- **Me Too**: No clear differentiation (requires rework)
```

### **Clarity Validation Prompts**

#### **Stranger Test**
```
I'm going to pretend I've never heard of your company. Read me your:
1. Brand essence statement
2. Target audience description  
3. Value proposition

Then I'll tell you:
- What I think your company does
- Who I think it's for
- Why someone would choose you

Accuracy scoring:
- 90-100%: Crystal clear positioning
- 70-89%: Mostly clear with minor confusion
- 50-69%: Somewhat confusing, needs clarification
- 0-49%: Very confusing, major rework needed
```

#### **Elevator Pitch Test**
```
You have 30 seconds to explain your company to someone at a networking event.
After your explanation, they should be able to:
1. Understand what problem you solve
2. Know if they're your target customer  
3. Identify what makes you different
4. Decide if they want to learn more

Test with 5 different people outside your industry.
Pass rate needed: 4/5 successful explanations
```

---

## 🎯 Setup Quality Gates

### **Gate 1: Foundation Requirements**
**Cannot proceed without:**
- [ ] Brand essence clearly articulated
- [ ] Target audience demographics complete
- [ ] Core problem/solution identified
- [ ] Basic competitive differentiation

### **Gate 2: Framework Compliance**
**Must demonstrate:**
- [ ] Russell Brunson customer avatar elements
- [ ] Who/What statement completed
- [ ] Big Domino belief identified
- [ ] New opportunity vs improvement clarity

### **Gate 3: Recognition Validation**  
**Must achieve:**
- [ ] 80%+ recognition score from target audience sample
- [ ] 3+ "that's exactly me" trigger points
- [ ] Clear behavioral pattern identification
- [ ] Specific pain point resonance

### **Gate 4: Differentiation Validation**
**Must demonstrate:**
- [ ] Unique positioning vs competitors
- [ ] Clear reason to choose vs alternatives  
- [ ] Category creation or subcategory ownership
- [ ] Compelling value differentiation

### **Gate 5: Implementation Readiness**
**Must provide:**
- [ ] Specific enough detail for practical use
- [ ] Consistent brand/business/value alignment
- [ ] Measurable success metrics defined
- [ ] Clear next steps for improvement

---

## ⚡ Quick Setup Workflow

### **Express Setup (30 minutes)**
```bash
# For experienced entrepreneurs with clear vision
claude express-setup your-company-name

# Streamlined interview focusing on:
# - Core customer avatar (10 min)
# - Value proposition big domino (10 min)  
# - Brand differentiation (10 min)
# - Quick validation (auto-generated)
```

### **Deep Setup (2 hours)**
```bash
# For new businesses or major pivots
claude deep-setup your-company-name

# Comprehensive interview including:
# - Full Russell Brunson framework application
# - Detailed competitive analysis
# - Brand identity development
# - Multiple validation rounds
# - Enhancement recommendations
```

### **Collaborative Setup (Team)**
```bash
# For teams/multiple stakeholders  
claude team-setup your-company-name --members=3

# Facilitates team alignment on:
# - Shared customer avatar understanding
# - Agreed value proposition
# - Consistent brand identity
# - Validated differentiation strategy
```

---

## 🏆 Success Criteria

### **Company Setup Completion Standards**

**Minimum Viable Setup (80/100 score):**
- Clear customer avatar with specific demographics
- Identifiable pain points and recognition triggers  
- Basic value proposition with differentiation
- Usable brand guidelines with colors/fonts
- Ready for simple project creation

**Recommended Setup (90/100 score):**
- Detailed customer psychology and behavior patterns
- Strong Big Domino belief and new opportunity positioning
- Comprehensive brand identity with voice/tone
- Validated recognition and differentiation
- Ready for complex project creation

**Optimal Setup (95+/100 score):**
- Deep customer insights from research/interviews
- Category-creating value proposition
- Distinctive brand with emotional connection
- Market-tested positioning and messaging
- Ready for scale and competitive advantage

### **Validation Success Metrics**
- **Recognition Rate**: 80%+ of target audience identifies with avatar
- **Differentiation Clarity**: 90%+ can explain unique positioning  
- **Implementation Readiness**: All team members aligned on brand/message
- **Market Validation**: Positive response from prospect conversations

This comprehensive setup system ensures every company context meets the high standards needed for successful BMAD project execution! 🚀