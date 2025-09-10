#!/bin/bash

# APEX SEO Agent - Programmatic Scaling Workflow
# Purpose: Generate multiple SEO-optimized pages based on keyword research

SITE_URL="$1"
TIMESTAMP=$(date +%Y%m%d-%H%M%S)

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
PURPLE='\033[0;35m'
NC='\033[0m'

echo -e "${BLUE}🚀 APEX SEO AGENT - Programmatic SEO Scaling${NC}"
echo -e "${YELLOW}Target Site: $SITE_URL${NC}"
echo ""

# Strategy explanation
echo -e "${PURPLE}📈 PROGRAMMATIC SEO STRATEGY${NC}"
echo -e "${YELLOW}This workflow implements the proven strategy from the transcript:${NC}"
echo "• Generate 100-1000 targeted SEO pages"
echo "• Each page targets 20-50 monthly searches"
echo "• Total potential: 2,000-50,000 monthly organic visitors"
echo "• Focus on tool comparisons, how-to guides, and resource lists"
echo ""

# Create comprehensive Claude Code prompt for programmatic scaling
CLAUDE_PROMPT="
I want to implement a programmatic SEO strategy for $SITE_URL to scale from current traffic to 20,000+ monthly organic visitors. 

Based on the proven approach from successful marketers, please:

## Phase 1: Research & Strategy
1. **Use Firecrawl MCP** to scrape and analyze my current website ($SITE_URL)
2. **Use Perplexity MCP** to find relevant programmatic keyword opportunities for my business
3. **Use DataForSEO MCP** (if available) to research search volumes and validate opportunities
4. **Create a PRD (Product Requirements Document)** that consolidates all research into a clear action plan

## Phase 2: Identify Scalable Content Types
Focus on these high-value programmatic content types:
- **Tool Comparisons** (e.g., 'X vs Y for [use case]')
- **Industry-Specific Pages** (e.g., '[tool] for [industry]')
- **How-to Guides** (e.g., 'How to [task] using [tools]')  
- **Best-of Lists** (e.g., 'Best [tools] for [use case] in 2025')
- **Feature Comparisons** (e.g., '[feature] comparison between [tools]')

## Phase 3: Template Creation
1. **Create reusable page templates** that can be scaled to hundreds of pages
2. **Include SEO best practices**:
   - Optimized title tags with current year (2025)
   - Compelling meta descriptions
   - Proper header hierarchy (H1, H2, H3)
   - Internal linking between related pages
   - FAQ sections with schema markup
   - Community/user-generated content angles
   - Clear calls-to-action

## Phase 4: Implementation Strategy
1. **Start with 1 high-priority comparison page** as proof of concept
2. **Validate the template works** and generates traffic
3. **Scale to 10 pages** in the same category
4. **Expand to 100+ pages** across multiple categories
5. **Target 1000+ pages** for maximum traffic potential

## Phase 5: Technical SEO Integration
1. **Use Claude Code** to implement all pages systematically
2. **Add schema markup** for better search visibility
3. **Optimize internal linking** between programmatic pages
4. **Implement tracking** for performance monitoring

## Specific Requirements:
- Focus on **long-tail keywords** with commercial or informational intent
- Include **2025 dates** for freshness signals
- Create **comparison tables** and **interactive elements** where relevant
- Add **community insights** and **user feedback** sections for authenticity
- Ensure **mobile optimization** and **fast loading times**

## Expected Outcomes:
- **Month 1**: 10 optimized pages generating 200-500 monthly visits
- **Month 2**: 50 pages generating 1,000-2,500 monthly visits  
- **Month 3**: 100+ pages generating 2,000-5,000 monthly visits
- **Long-term**: 1000+ pages generating 20,000-50,000 monthly visits

Please start with the research phase and create a specific implementation plan for my business. Then we'll build the first template page together.
"

echo -e "${BLUE}🎯 LAUNCHING PROGRAMMATIC SEO RESEARCH${NC}"
echo ""
echo -e "${YELLOW}Claude Code Prompt:${NC}"
echo "----------------------------------------"
echo "$CLAUDE_PROMPT"
echo "----------------------------------------"
echo ""

# Save prompt to file
echo "$CLAUDE_PROMPT" > "programmatic-scaling-prompt-${TIMESTAMP}.txt"
echo -e "${GREEN}✅ Prompt saved to: programmatic-scaling-prompt-${TIMESTAMP}.txt${NC}"

echo -e "${PURPLE}🔥 SUCCESS FACTORS FROM PROVEN STRATEGY:${NC}"
echo ""
echo -e "${YELLOW}1. Community Angle${NC} - Include user reviews and feedback for authenticity"
echo -e "${YELLOW}2. Timely Content${NC} - Use '2025' in titles for freshness signals"
echo -e "${YELLOW}3. Systematic Approach${NC} - Use AI tools for scale and consistency"
echo -e "${YELLOW}4. Technical Excellence${NC} - Automated SEO audits and fixes"
echo -e "${YELLOW}5. Long-tail Focus${NC} - Target specific, easier-to-rank keywords"
echo ""

echo -e "${BLUE}📋 IMPLEMENTATION WORKFLOW:${NC}"
echo ""
echo -e "${GREEN}Step 1:${NC} Copy the prompt above into Claude Code"
echo -e "${GREEN}Step 2:${NC} Claude Code will research your business and create strategy"
echo -e "${GREEN}Step 3:${NC} Build your first template page"
echo -e "${GREEN}Step 4:${NC} Validate traffic and conversions"
echo -e "${GREEN}Step 5:${NC} Scale to 10 pages, then 100, then 1000+"
echo ""

echo -e "${YELLOW}💡 Pro Tips:${NC}"
echo "• Start with 1 page to validate the approach"
echo "• Use the exact strategies that generated millions of visits for others"
echo "• Focus on programmatic content that scales systematically"
echo "• Monitor performance and iterate based on data"
echo ""

echo -e "${PURPLE}🎯 TARGET: 20,000+ Monthly Organic Visitors in 90 Days${NC}"
echo ""