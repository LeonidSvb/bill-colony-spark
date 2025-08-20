# Slash Command Demo Workflow

## Complete Example: From YouTube Video to Published Content

### Step 1: Content Scoring (/content-scorer)

**Claude Code Prompt:**
```
Run the Content Scorer workflow:

1. Load client context from clients/nuage/strategist-pack.md and clients/nuage/brand-pack.md
2. Process this YouTube video: https://youtube.com/watch?v=example123
3. Use MCP youtube-processor to get transcript
4. Save transcript to agents/outputs/nuage-20250820-transcript.md
5. Extract 10-15 key moments with timestamps
6. Generate content opportunities across all channels:
   - LinkedIn Text Post (120-220 words)
   - Carousel/Infographic (6-10 slides) 
   - PDF Guide (8-14 pages)
   - Blog Post (700-900 words)
   - Quote Graphic (single line)
   - YouTube Description (with chapters)
   - Newsletter (always included)
7. Apply ICE scoring (Impact 0-10, Confidence 0-10, Ease 0-10, +2 BOFU bonus)
8. Rank by total ICE score
9. Save to agents/outputs/nuage-20250820-opportunities.md

Client: nuage
YouTube URL: https://youtube.com/watch?v=example123

Follow the exact format from agents/content-scorer.md
```

**Expected Output:**
- Transcript saved with timestamps
- 8-12 ranked opportunities with ICE scores
- Clear connection between video content and Nuage ICP pain points
- Ready for human selection of top opportunities

### Step 2: Content Generation (/content-generator)

**Claude Code Prompt:**
```
Run the Content Generator workflow:

1. Load client context from clients/nuage/strategist-pack.md and clients/nuage/brand-pack.md  
2. Load opportunities from agents/outputs/nuage-20250820-opportunities.md
3. Select opportunities #1, #3, and #6 (highest ICE scores)
4. Generate complete content for each selected opportunity:
   - Apply channel-specific formatting rules
   - Use Nuage brand voice (professional but approachable, data-driven)
   - Include strong hooks and clear CTAs from strategist pack
   - Create designer briefs for visual content
5. Always include newsletter combining all opportunities
6. Save complete package to agents/outputs/nuage-20250820-content-package.md

Client: nuage
Selected opportunities: #1, #3, #6

Follow the exact format from agents/content-generator.md with human approval workflow
```

**Expected Output:**
- 3 pieces of ready-to-publish content
- Designer briefs for any visual content
- Newsletter combining all insights
- Clear next actions for Bill/VA

### Step 3: Review & Deployment

**Manual Steps:**
1. **Review Content Package**: Check for brand voice consistency and accuracy
2. **Approve Text Content**: LinkedIn posts, blog posts ready to publish
3. **Send Design Briefs**: Forward carousel/PDF briefs to VA/designer
4. **Schedule Publishing**: 
   - LinkedIn post (immediate)
   - Newsletter (next send date)
   - Blog post (content calendar)
5. **Track Results**: Monitor engagement and adjust future opportunities

### Sample File Outputs

#### opportunities.md Structure:
```markdown
# Content Opportunities - nuage - 2025-08-20

**Source:** https://youtube.com/watch?v=example123
**Duration:** 18:30
**Client:** nuage

## Client Context Summary
- **ICP:** CFOs, Finance Directors at $10M-$100M companies
- **Key Pains:** NetSuite complexity, inventory management, financial reporting
- **Offers:** Free NetSuite Health Check, Optimization PDF, Consultation call
- **Brand Voice:** Professional but approachable, data-driven, solution-oriented

## Ranked Opportunities

### #1 - "3 NetSuite Inventory Mistakes Costing You $50K+" (ICE: 28)
- **Format:** LinkedIn Text Post
- **Target:** Operations Managers struggling with inventory
- **Pain Addressed:** Inventory management inefficiency
- **Impact:** 10 (+2 BOFU) - Directly addresses top pain point with specific outcome
- **Confidence:** 8 - Video shows specific examples and metrics
- **Ease:** 8 - Ready with light editing
- **Hook Options:**
  - "Most NetSuite users make these 3 inventory mistakes..."
  - "Your inventory errors are costing more than you think..."
- **Key Message:** Specific NetSuite settings causing expensive inventory issues
```

#### content-package.md Structure:
```markdown
# Content Package - nuage - 2025-08-20

## LinkedIn Text Post: "3 NetSuite Inventory Mistakes Costing You $50K+"

Most NetSuite users make these 3 inventory mistakes, and it's costing them $50K+ annually:

1. **Wrong Reorder Points** - Using static reorder points instead of demand-based calculations leads to 30% excess inventory

2. **Manual Count Adjustments** - Bypassing proper receiving processes creates phantom inventory that shows up during year-end audits

3. **Ignoring Lot Tracking** - For manufacturers, poor lot management causes compliance issues and recall nightmares

The fix? Optimize your NetSuite inventory module settings. Takes 2-3 hours, saves thousands monthly.

**CTA:** Get our Free NetSuite Health Check to identify your specific inventory optimization opportunities.

**Hashtags:** #NetSuite #InventoryManagement #OperationalEfficiency

---

## Content Package Summary
**Generated Items:** 4 pieces
**Design Needed:** 1 item (carousel)
**Ready to Publish:** 3 items
**Next Actions:** Review content, send designer brief to VA, schedule LinkedIn post
```

### Efficiency Comparison

**Before (Manual Process):**
- Find video content: 15 min
- Take notes: 30 min  
- Brainstorm content ideas: 45 min
- Write LinkedIn post: 30 min
- Write blog post: 90 min
- Create newsletter: 45 min
- **Total: 4 hours for 3 pieces**

**After (Slash Commands):**
- Run /content-scorer: 2 min
- Review opportunities: 3 min
- Run /content-generator: 2 min
- Review/approve content: 8 min
- **Total: 15 minutes for 6+ pieces**

**Efficiency Gain: 16x improvement**

### Quality Improvements

- **Consistency**: Every piece uses exact Nuage brand voice
- **Targeting**: All content addresses specific ICP pain points
- **Evidence**: Claims backed by video examples and metrics
- **Action**: Clear CTAs driving to Nuage offers
- **Completeness**: Multiple formats for different audience preferences

---
*This is how 10x content marketing efficiency becomes reality*