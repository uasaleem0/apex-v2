---
name: apex-optimize
description: Weekly autonomous optimization system for websites and applications
---

# APEX Weekly Optimization System

**Usage**: `/apex-optimize [weekly|analyze|implement|report]`

**Purpose**: Autonomous website/app optimization based on real user behavior data with weekly improvement cycles.

## Quick Start Commands

### **🚀 Run Complete Weekly Optimization**
```bash
/apex-optimize weekly
```
**What it does**:
1. Collects data from all configured sources
2. Analyzes user behavior patterns and identifies opportunities
3. Implements micro-optimizations automatically
4. Generates strategic recommendations for your review
5. Creates comprehensive optimization report

### **📊 Analysis Only**
```bash
/apex-optimize analyze
```
**What it does**:
- Deep dive into user behavior data
- Identify conversion bottlenecks
- Benchmark performance metrics
- Generate insights without implementing changes

### **⚡ Implement Optimizations**
```bash
/apex-optimize implement
```
**What it does**:
- Deploy approved micro-optimizations
- Update copy, meta tags, performance fixes
- Apply accessibility improvements
- Optimize internal linking and SEO

### **📈 Generate Optimization Report**
```bash
/apex-optimize report
```
**What it does**:
- Create comprehensive weekly optimization report
- Show performance improvements and metrics
- List strategic recommendations needing approval
- Provide data-driven insights for decision making

## Configuration by Website/App Type

### **E-commerce Setup**
```yaml
optimization_focus:
  - Shopping cart abandonment reduction
  - Product page conversion optimization
  - Checkout funnel improvements
  - Search and filter enhancements
  - Mobile commerce optimization
  
data_sources_required:
  - Google Analytics Enhanced E-commerce
  - Heatmap data for product and checkout pages
  - Cart abandonment email metrics
  - Product search query data
```

### **SaaS Application Setup**
```yaml
optimization_focus:
  - User onboarding completion rates
  - Feature adoption and usage patterns
  - Subscription conversion optimization
  - Churn reduction strategies
  - Dashboard UX improvements
  
data_sources_required:
  - User behavior analytics
  - Feature usage statistics
  - Subscription funnel data
  - Support ticket patterns
```

### **Content Website Setup**
```yaml
optimization_focus:
  - Content engagement optimization
  - Email subscription conversion
  - Ad revenue optimization
  - Reading pattern improvements
  - Social sharing enhancement
  
data_sources_required:
  - Content performance analytics
  - Reading behavior heatmaps
  - Email subscription data
  - Social media engagement metrics
```

### **Service Business Setup**
```yaml
optimization_focus:
  - Lead generation optimization
  - Contact form conversion
  - Trust signal enhancement
  - Local SEO improvements
  - Consultation booking optimization
  
data_sources_required:
  - Lead conversion analytics
  - Contact form interaction data
  - Local search performance
  - Client testimonial effectiveness
```

## Autonomous Optimization Types

### **🤖 Auto-Implement (No Approval Needed)**
- **Copy Optimization**: Headlines, button text, descriptions based on engagement data
- **SEO Enhancements**: Meta tags, alt text, schema markup updates
- **Performance Fixes**: Image compression, caching, loading speed improvements
- **Accessibility Updates**: Color contrast, font sizes, WCAG compliance
- **Mobile Responsiveness**: Touch targets, layout adjustments, usability fixes
- **Internal Linking**: Site structure optimization, link equity distribution

### **🎯 Strategic Recommendations (Your Approval Required)**
- **Layout Changes**: Page restructuring based on heatmap analysis
- **Feature Additions**: New functionality based on user behavior gaps
- **Funnel Redesigns**: Conversion flow optimization strategies
- **A/B Test Proposals**: Major design or strategy experiments
- **Content Strategy**: Editorial calendar and content type recommendations
- **Pricing Optimization**: Pricing page and strategy improvements

## Weekly Optimization Cycle

### **Monday: Data Collection**
```bash
# Automatically runs via scheduled optimization
- Collect Google Analytics data
- Download heatmap reports
- Gather performance metrics
- Analyze user feedback and support tickets
- Review A/B test results from previous week
```

### **Tuesday: Pattern Analysis**
```bash
# Identifies optimization opportunities
- Map user journey bottlenecks
- Find conversion rate improvement opportunities
- Benchmark performance against competitors
- Identify content gaps and opportunities
- Calculate potential impact of changes
```

### **Wednesday-Thursday: Implementation**
```bash
# Deploys autonomous improvements
- Update copy and headlines
- Optimize images and performance
- Fix accessibility and mobile issues
- Enhance SEO elements
- Improve internal site structure
```

### **Friday: Strategic Planning**
```bash
# Generates recommendations for your review
- Create A/B test proposals for major changes
- Design conversion funnel optimization plans
- Develop content strategy recommendations
- Calculate ROI projections for proposed changes
- Generate comprehensive weekly report
```

## Data Integration Examples

### **Google Analytics Integration**
```yaml
key_metrics:
  - Conversion rate by page and traffic source
  - User journey and funnel analysis
  - Page engagement and bounce rates
  - Mobile vs desktop performance
  - Search query and site search data
  
optimization_triggers:
  - Pages with high traffic but low conversions
  - Mobile pages with high bounce rates
  - Forms with low completion rates
  - Content with low engagement time
```

### **Heatmap Data Integration**
```yaml
behavioral_insights:
  - Click pattern analysis for CTA optimization
  - Scroll depth data for content placement
  - Form interaction patterns
  - Navigation usage statistics
  - Mobile touch behavior analysis
  
optimization_opportunities:
  - CTA button placement and styling
  - Content hierarchy adjustments
  - Form field optimization
  - Navigation menu improvements
```

### **Performance Monitoring**
```yaml
technical_metrics:
  - Core Web Vitals (LCP, FID, CLS)
  - Page load times by device and connection
  - Server response times
  - Image optimization opportunities
  - Third-party script performance impact
  
optimization_actions:
  - Automatic image compression and format conversion
  - Caching strategy improvements
  - Third-party script optimization
  - Critical CSS inlining
```

## Sample Weekly Report Output

```markdown
# APEX Weekly Optimization Report - January 15, 2025

## Executive Summary
✅ **12 optimizations implemented** this week
📈 **+23% improvement** in primary conversion metric
⚡ **1.8s faster** average page load time
🎯 **3 strategic recommendations** ready for your review

## Autonomous Improvements Implemented

### Conversion Optimizations
- Homepage CTA: "Learn More" → "Start Free Trial" (+34% click rate)
- Product page buttons: Improved mobile touch targets (+18% mobile conversions)
- Checkout form: Reduced fields from 8 to 5 (+22% completion rate)

### Performance Enhancements  
- Compressed 47 images: 2.3MB → 0.8MB total savings
- Implemented lazy loading: +1.2s improvement in page load time
- Optimized Google Fonts loading: +0.6s improvement

### SEO & Accessibility
- Updated 23 meta descriptions based on search performance
- Fixed 12 accessibility issues (color contrast, alt text)
- Added schema markup to 8 product pages

## Strategic Recommendations (Your Review Needed)

### 🔥 High Impact Opportunity
**Redesign Pricing Page Layout**
- Current conversion: 2.3%
- Projected improvement: +45% (3.3% conversion rate)
- Based on: Heatmap shows users miss key features comparison
- Implementation: 3-4 hours development time

### 📊 Medium Impact Opportunity  
**Add Live Chat Widget**
- Current: 15% of visitors contact support
- Projected: +67% faster issue resolution, +12% conversions
- Based on: Support ticket analysis shows simple questions dominate
- Implementation: 1-2 hours setup + monthly subscription

### 🧪 A/B Test Proposal
**Hero Section Redesign**
- Test: Value proposition clarity vs current design
- Duration: 2 weeks minimum
- Success metric: Email signups (+baseline 8.2%)
- Risk: Low (easy to revert)

## Key Data Insights
- **Mobile traffic**: 67% of visitors, but 23% lower conversion rate
- **Top performing content**: "How-to" guides (4.7min avg engagement)
- **Biggest drop-off**: Shipping cost reveal page (43% abandonment)
- **Best traffic source**: Organic search (2.8x higher lifetime value)

## Next Week's Optimization Focus
1. Launch pricing page redesign A/B test
2. Implement mobile-specific conversion optimizations
3. Test new hero section design
4. Optimize blog content strategy based on engagement patterns
```

## Integration with APEX Development Workflow

### **Connects to Core APEX Agents**
- **@apex-analyst (Mary)**: Market context for optimization priorities
- **@apex-pm (John)**: Business alignment of optimization strategies  
- **@apex-architect (Winston)**: Technical feasibility of proposed changes
- **@apex-ux (Sally)**: Design optimization and user experience improvements

### **Generates Development Stories**
- Creates optimization implementation stories
- Produces A/B test development requirements
- Generates performance improvement epics
- Feeds optimization insights into product roadmap

---

**🚀 Start optimizing immediately with `/apex-optimize weekly` and watch your metrics improve week over week with data-driven autonomous improvements!**