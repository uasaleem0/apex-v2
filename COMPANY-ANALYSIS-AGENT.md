# Company Setup Analysis Agent

## Purpose
Automated analysis agent that evaluates company setup completeness and quality based on Russell Brunson's frameworks and business strategy best practices.

## Analysis Framework

### **Stage 1: Completeness Analysis**

#### **Required Information Checklist**
```yaml
brand_context_required:
  - brand_essence: "One sentence brand purpose/mission"
  - color_palette: "Minimum 4 colors with hex codes and usage"
  - typography: "Primary and secondary fonts with reasoning"
  - voice_tone: "3-5 specific communication characteristics"
  - visual_identity: "2-3 core design principles"
  - competitive_differentiation: "Clear positioning vs competitors"

business_context_required:
  - target_demographics: "Age, location, income, tech usage patterns"
  - pain_points: "3-5 specific, recognizable frustrations"
  - behavioral_patterns: "Where they hang out, how they consume content"
  - recognition_triggers: "3-5 'that's exactly me' moments"
  - current_solutions: "What they currently do/use"
  - success_metrics: "How they define progress/success"

value_proposition_required:
  - who_what_statement: "I teach [who] how to [what] through [method]"
  - big_domino: "Core belief that eliminates all objections"
  - new_opportunity: "How this is different, not just better"
  - status_elevation: "How customers appear better/smarter/more successful"
  - transformation: "Clear FROM → TO → THROUGH progression"
```

### **Stage 2: Quality Evaluation**

#### **Content Quality Scoring Algorithm**

**Specificity Score (0-25 points per section)**
- **Generic (0-8 points)**: Could apply to any company in the industry
- **Somewhat Specific (9-16 points)**: Has some unique elements but still broad
- **Highly Specific (17-25 points)**: Unique, detailed, clearly differentiated

**Recognition Score (0-25 points per section)**
- **Low Recognition (0-8 points)**: Target audience wouldn't identify with descriptions
- **Medium Recognition (9-16 points)**: Some elements would resonate
- **High Recognition (17-25 points)**: Clear "that's exactly me" response expected

**Differentiation Score (0-25 points per section)**
- **Undifferentiated (0-8 points)**: Same as every competitor
- **Somewhat Different (9-16 points)**: Has unique elements but not compelling
- **Clearly Differentiated (17-25 points)**: Obviously different approach/positioning

**Implementation Readiness (0-25 points per section)**
- **Too Vague (0-8 points)**: Not enough detail for practical use
- **Moderately Detailed (9-16 points)**: Some specifics but gaps remain
- **Implementation Ready (17-25 points)**: Specific enough for immediate use

### **Stage 3: Framework Compliance Analysis**

#### **Russell Brunson Framework Compliance**

**Customer Avatar Framework Compliance:**
```python
def analyze_customer_avatar(business_context):
    compliance_score = 0
    
    # Core Market Identification (25 points)
    if identifies_core_market(business_context):
        compliance_score += 25
    
    # Customer Group Classification (25 points)  
    if classifies_customer_group(business_context):
        compliance_score += 25
    
    # Dream Customer Detail (25 points)
    if has_detailed_avatar(business_context):
        compliance_score += 25
    
    # Behavioral Mapping (25 points)
    if maps_customer_behavior(business_context):
        compliance_score += 25
    
    return compliance_score
```

**Expert Secrets Framework Compliance:**
```python  
def analyze_value_proposition(value_prop_context):
    compliance_score = 0
    
    # Who/What Statement (30 points)
    if has_who_what_statement(value_prop_context):
        compliance_score += 30
    
    # Big Domino Identification (35 points)
    if has_big_domino(value_prop_context):
        compliance_score += 35
    
    # New Opportunity vs Improvement (35 points)
    if creates_new_opportunity(value_prop_context):
        compliance_score += 35
    
    return compliance_score
```

### **Stage 4: Gap Analysis & Recommendations**

#### **Critical Gaps Detection**
```yaml
critical_gaps:
  missing_recognition_triggers:
    severity: "HIGH"
    impact: "Customers won't identify with messaging"
    recommendation: "Add 3-5 specific situations customers recognize"
  
  vague_differentiation:
    severity: "HIGH" 
    impact: "Will sound like every competitor"
    recommendation: "Define unique positioning vs alternatives"
  
  generic_pain_points:
    severity: "MEDIUM"
    impact: "Messaging won't resonate deeply"
    recommendation: "Make pain points more specific and emotional"
  
  weak_big_domino:
    severity: "HIGH"
    impact: "No compelling core belief to drive conversions"
    recommendation: "Identify the one belief that eliminates all objections"
```

#### **Enhancement Opportunities**
```yaml
enhancement_opportunities:
  brand_storytelling:
    current_score: 65
    enhancement_potential: 85
    actions: ["Add origin story", "Define brand mission", "Create emotional connection"]
  
  competitive_positioning:
    current_score: 70
    enhancement_potential: 90
    actions: ["Research competitor weaknesses", "Identify unique strengths", "Create category-of-one positioning"]
  
  customer_psychology:
    current_score: 75
    enhancement_potential: 95
    actions: ["Conduct customer interviews", "Identify emotional triggers", "Map customer journey emotions"]
```

---

## Analysis Execution Prompts

### **Automated Analysis Prompt Template**

```
## Company Setup Analysis Request

**Company Name**: [Company Name]
**Analysis Date**: [Current Date]
**Analyst**: BMAD Analysis Agent

### Analysis Parameters
- Framework Compliance: Russell Brunson Expert Secrets + DotCom Secrets  
- Quality Standards: Business Strategy Best Practices
- Scoring Method: 4-Factor Quality Assessment
- Pass Threshold: 80/100 minimum in each category

### Documents to Analyze
1. **Brand Context**: companies/[company]/brand/style-guide.md
2. **Business Context**: companies/[company]/business/target-audience.md  
3. **Value Proposition**: companies/[company]/business/value-proposition.md

### Analysis Output Required
1. **Completeness Score** (0-100 for each document)
2. **Quality Assessment** (Specificity, Recognition, Differentiation, Implementation)
3. **Framework Compliance** (Brunson methodology adherence)
4. **Critical Gaps** (High-priority missing elements)
5. **Enhancement Recommendations** (Specific improvement actions)
6. **Project Readiness** (Pass/Fail with reasoning)

### Evaluation Criteria
- **Pass (80+)**: Ready for project creation with high success probability
- **Review (60-79)**: Needs improvement before project creation
- **Fail (<60)**: Requires complete rework before proceeding

Please analyze the provided company setup documents and provide detailed scoring, gap analysis, and specific recommendations for improvement.
```

### **Quality Validation Questions for Analysis**

#### **The Brunson Framework Test**
1. **Customer Avatar Test**: "Can you clearly identify which of Brunson's three customer groups (Diehard, Satisfied, Frustrated) this targets and why?"

2. **Big Domino Test**: "What's the one core belief this company wants customers to accept, and does it eliminate objections?"

3. **New Opportunity Test**: "How does this create a new opportunity rather than just improving existing solutions?"

4. **Status Elevation Test**: "How will customers appear more intelligent, wealthy, attractive, or stylish by using this solution?"

#### **Market Positioning Test**  
1. **Recognition Test**: "Would the target customer immediately think 'that's exactly me' when reading this?"

2. **Differentiation Test**: "Can you explain in one sentence why someone would choose this over alternatives?"

3. **Clarity Test**: "Could a stranger understand what this company does and for whom?"

4. **Consistency Test**: "Do all elements (brand, audience, value prop) align and support each other?"

#### **Implementation Test**
1. **Actionability Test**: "Is there enough detail for designers/developers to create accurate materials?"

2. **Scalability Test**: "Can this positioning support growth and evolution?"

3. **Measurability Test**: "Are success metrics defined and trackable?"

---

## Analysis Report Template

### **Company Setup Analysis Report**

**Company**: [Name]  
**Analysis Date**: [Date]
**Overall Readiness**: [PASS/REVIEW/FAIL]

#### **Executive Summary**
- **Readiness Score**: [X]/100
- **Critical Issues**: [Number] high-priority gaps identified
- **Recommendation**: [Ready for projects/Needs improvement/Requires rework]

#### **Detailed Scoring**

| Category | Score | Status | Priority Issues |
|----------|-------|---------|-----------------|
| Brand Context | [X]/100 | [Pass/Review/Fail] | [Top 2 issues] |
| Business Context | [X]/100 | [Pass/Review/Fail] | [Top 2 issues] |  
| Value Proposition | [X]/100 | [Pass/Review/Fail] | [Top 2 issues] |
| Framework Compliance | [X]/100 | [Pass/Review/Fail] | [Top 2 issues] |

#### **Critical Gaps Requiring Immediate Attention**
1. **[Gap 1]**: [Description] → [Specific action needed]
2. **[Gap 2]**: [Description] → [Specific action needed]
3. **[Gap 3]**: [Description] → [Specific action needed]

#### **Enhancement Opportunities**  
1. **[Opportunity 1]**: [Current state] → [Enhanced state] → [Action steps]
2. **[Opportunity 2]**: [Current state] → [Enhanced state] → [Action steps]

#### **Next Steps**
- [ ] **Immediate**: [High-priority fixes needed before project creation]
- [ ] **Short-term**: [Improvements to make within 30 days]  
- [ ] **Long-term**: [Strategic enhancements for competitive advantage]

#### **Project Creation Authorization**
- [X] **APPROVED**: All critical requirements met, ready for project creation
- [ ] **CONDITIONAL**: Can proceed with noted limitations and planned improvements  
- [ ] **DENIED**: Critical gaps must be addressed before project creation

This analysis framework ensures every company setup meets the high standards needed for successful BMAD project execution based on proven business strategy methodologies.