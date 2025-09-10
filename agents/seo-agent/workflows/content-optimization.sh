#!/bin/bash

# APEX SEO Agent - Content Optimization Workflow
# Purpose: Optimize existing website content for search engines

SITE_URL="$1"
TIMESTAMP=$(date +%Y%m%d-%H%M%S)

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${BLUE}📝 APEX SEO AGENT - Content Optimization${NC}"
echo -e "${YELLOW}Target Site: $SITE_URL${NC}"
echo ""

# Check if Claude Code is available
if ! command -v claude > /dev/null 2>&1; then
    echo -e "${RED}❌ Claude Code not found. Please install Claude Code first.${NC}"
    echo "Visit: https://claude.ai/code for installation instructions"
    exit 1
fi

echo -e "${YELLOW}🔍 Analyzing current site content...${NC}"

# Create Claude Code prompt for content optimization
CLAUDE_PROMPT="
I need to optimize the website content at $SITE_URL for SEO. Please:

1. **Crawl and analyze** the site using available MCPs (Firecrawl if available)
2. **Identify optimization opportunities** for:
   - Page titles (50-60 characters, keyword-focused)
   - Meta descriptions (150-160 characters, compelling)
   - Header structure (H1, H2, H3 hierarchy)
   - Internal linking opportunities
   - Content keyword density and relevance

3. **Generate specific recommendations** for each page:
   - Suggested title tag improvements
   - Optimized meta descriptions
   - Header restructuring recommendations
   - Internal linking suggestions
   - Content enhancement ideas

4. **Create implementation plan** with:
   - Priority order (high impact, low effort first)
   - Specific code changes needed
   - Expected traffic impact

5. **Focus on programmatic SEO potential**:
   - Identify template opportunities
   - Suggest scalable content structures
   - Recommend data-driven page generation

Please provide actionable, specific recommendations I can implement immediately.
"

echo -e "${BLUE}🚀 Launching Claude Code for content analysis...${NC}"
echo ""
echo -e "${YELLOW}Prompt being sent to Claude Code:${NC}"
echo "----------------------------------------"
echo "$CLAUDE_PROMPT"
echo "----------------------------------------"
echo ""

# Save prompt to file for reference
echo "$CLAUDE_PROMPT" > "content-optimization-prompt-${TIMESTAMP}.txt"
echo -e "${GREEN}✅ Prompt saved to: content-optimization-prompt-${TIMESTAMP}.txt${NC}"

echo -e "${YELLOW}💡 Next Steps:${NC}"
echo "1. Copy the prompt above and paste it into Claude Code"
echo "2. Claude Code will analyze your site and provide specific optimization recommendations"
echo "3. Implement the suggested changes using the provided code updates"
echo "4. Run './seo-agent.sh scale $SITE_URL' for programmatic page generation"
echo ""
echo -e "${BLUE}🎯 Expected Outcomes:${NC}"
echo "• Improved click-through rates from search results"
echo "• Better keyword rankings for existing pages" 
echo "• Enhanced internal linking structure"
echo "• Foundation for programmatic SEO scaling"
echo ""

# Optional: Auto-launch Claude Code if in supported environment
if [[ "$SHELL" == *"bash"* ]] && command -v claude > /dev/null 2>&1; then
    echo -e "${YELLOW}🤖 Attempting to launch Claude Code automatically...${NC}"
    echo "$CLAUDE_PROMPT" | claude
else
    echo -e "${YELLOW}📋 Manual Steps:${NC}"
    echo "1. Run: claude"
    echo "2. Paste the prompt above"
    echo "3. Follow Claude Code's recommendations"
fi