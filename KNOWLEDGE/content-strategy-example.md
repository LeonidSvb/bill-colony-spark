# 🎯 Example: NetSuite Content Strategy

## Context
Real prompt used for NetSuite consulting client (from Bill → Leo Slack conversation).

## Complete Working Prompt

```
Strategic Analysis Required:

1. Content Audit First, identify:
Golden Nuggets: What are the most valuable, actionable insights shared?
Pain Points: Which NetSuite challenges resonated most with the audience?
Success Stories: Any case studies, metrics, or transformation stories mentioned?
Expert Quotes: Memorable statements from our CRO/COO that position thought leadership
Technical Deep Dives: Complex topics that warrant educational content

2. Content Recommendations Based on your analysis, recommend ONLY content pieces that add genuine value. For each piece, specify:
Format (LinkedIn post, carousel, PDF guide, infographic, quote graphic, etc.)
Core Message (the single takeaway)
Target Audience Segment (NetSuite admins, CFOs, operations managers, etc.)
Distribution Channel (LinkedIn, email, website resource center)
Expected Outcome (awareness, engagement, lead generation)

3. YouTube Video Description Create an SEO-optimized description that:
Hooks viewers with the most compelling insight
Includes natural keyword placement for NetSuite-related searches
Provides timestamped chapters based on topic shifts
Ends with a clear next step for viewers

4. Content Prioritization Rank your recommended assets by:
Impact Potential (High/Medium/Low)
Production Effort (Quick win vs. requires design)
Urgency (time-sensitive NetSuite updates vs. evergreen tips)

Guidelines:
Quality over Quantity: Only suggest content if it genuinely helps NetSuite users
Match Format to Message: Quick tips = text posts, complex processes = visual guides
Repurpose Smart: One great insight might become both a quote graphic AND the hook for a carousel
Stay Authentic: Maintain our CRO/COO's voice and expertise
Drive Action: Every piece should move readers toward optimization excellence

Output Format:
Present your recommendations as a strategic brief, not a task list. Explain WHY each piece matters and HOW it serves our audience's journey from NetSuite frustration to optimization mastery.
```

## Bill's Additions

### SEO/GEO optimization:
- Include Reddit as a repurposing channel
- Consider SEO for LLM (new trend)
- Create blog posts for website based on videos

### PDF creation:
- Agent should know branding (logo, colors)
- Create PDFs with visual elements
- Give instructions to designer if can't do it themselves

### Reddit Integration:
```
From any of the content, the agent can review a Clay table for all Reddit topics we've pulled in. 
Then if it sees a thread on a topic that was touched on in the video or long form content, 
it can call it out and provide a detailed comment in the brand or person's voice 
that a human can take and reply with
```

## Usage Results

**Created materials** (by Bill):
- LinkedIn AI Carousel PDF
- NetSuite PDF guide 
- YouTube video: "How to Use AI to Transform Your NetSuite"

**Feedback**: "i dont think they're like the standard we should be going for though. we could definitely level up"

## Key Principles

1. **Quality > Quantity**: Recommend only truly valuable materials
2. **Format = Message**: Quick tips = text posts, complex processes = visual guides  
3. **Smart repurposing**: One insight = multiple formats
4. **Voice preservation**: Maintain CRO/COO expertise
5. **Drive to action**: Every material should move toward optimization

## Application to Other Niches

This prompt can be adapted by replacing:
- "NetSuite" → [your industry]
- "CRO/COO" → [your experts]
- Audience segments → [your ICP]
- Specific pains → [your niche pains]

## Related Materials
- `../Prompts/content_repurposing_agent.md`
- `../Templates/ice_scoring_system.md`
- `YouTube`: https://www.youtube.com/watch?v=tBGSurKRre4