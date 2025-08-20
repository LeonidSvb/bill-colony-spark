# Content Marketing Slash Commands

## Quick Start

### 1. Analyze YouTube Video for Content Opportunities
```bash
/content-scorer https://youtube.com/watch?v=ABC123 nuage
```
**What it does:**
- Transcribes YouTube video using MCP
- Loads Nuage client context (ICP, pains, offers, brand voice)
- Identifies 8-12 content opportunities across all channels
- Scores each with ICE methodology (Impact + Confidence + Ease)
- Saves ranked opportunities to `agents/outputs/nuage-[date]-opportunities.md`

### 2. Generate Content from Selected Opportunities
```bash
/content-generator nuage #1,#3,#6
```
**What it does:**
- Loads Nuage client context and latest opportunities file
- Creates full content for opportunities #1, #3, and #6
- Applies proper formatting for each channel (LinkedIn, PDF, etc.)
- Includes designer briefs for visual content
- Always adds newsletter combining all selected opportunities
- Saves complete package to `agents/outputs/nuage-[date]-content-package.md`

## Available Channels

The system creates opportunities for:
- **LinkedIn Text Post** (120-220 words, immediate publishing)
- **Carousel/Infographic** (6-10 slides, needs design)
- **PDF Guide** (8-14 pages, needs design)
- **Blog Post** (700-900 words, immediate publishing)
- **Quote Graphic** (single line, needs design)
- **YouTube Description** (with chapters, immediate publishing)
- **Newsletter** (always included, immediate sending)

## Typical Workflow

### Morning Content Planning (5 minutes)
1. Find 1-2 good YouTube videos in your industry
2. Run `/content-scorer [URL] nuage` for each video
3. Review ICE scores in the opportunities file
4. Select 3-5 highest scoring opportunities

### Content Creation (10 minutes)
1. Run `/content-generator nuage #1,#3,#5,#8` (your selected numbers)
2. Review generated content package
3. Send designer briefs to VA for visual content
4. Publish text content immediately (LinkedIn, blog, newsletter)

### Weekly Results
- **Before**: 2-3 pieces of content per week, 4-6 hours total
- **After**: 15-20 pieces of content per week, 30-45 minutes total
- **Efficiency Gain**: 8-10x improvement

## File Locations

- **Client Context**: `clients/nuage/strategist-pack.md` and `clients/nuage/brand-pack.md`
- **Opportunities**: `agents/outputs/nuage-[YYYYMMDD]-opportunities.md`
- **Content Packages**: `agents/outputs/nuage-[YYYYMMDD]-content-package.md`
- **Transcripts**: `agents/outputs/nuage-[YYYYMMDD]-transcript.md`

## ICE Scoring Explained

Each opportunity gets scored 0-10 in three areas:

**Impact** - Will this move prospects toward buying?
- 10: Directly addresses objection or showcases offer
- 7-9: Solves specific ICP pain point  
- 4-6: Builds awareness and trust
- 1-3: Generic industry content

**Confidence** - Can you prove the claims?
- 10: Multiple specific examples from video
- 7-9: Clear examples with context
- 4-6: Theory-based with some evidence
- 1-3: Opinion without backing

**Ease** - How quickly can you create it?
- 10: Copy-paste with light editing
- 7-9: 15-30 minutes to complete
- 4-6: Needs design work or research
- 1-3: Requires significant time investment

**Total ICE**: Sum of all three (max 30, +2 bonus for BOFU content)

## Success Metrics

- **Quality**: Every piece addresses specific Nuage ICP pain points
- **Speed**: 15-20 content pieces in 30-45 minutes vs 4-6 hours before
- **Consistency**: Brand voice maintained across all channels
- **Results**: Higher engagement from more targeted, pain-focused content

## Getting Started Today

1. **Test the system**: Run `/content-scorer` on any business YouTube video
2. **Review output**: Check the opportunities file for quality and relevance
3. **Generate sample content**: Pick 2-3 opportunities and run `/content-generator`
4. **Measure time**: Track how long vs manual creation
5. **Iterate**: Refine client packs based on what works best

---
*Your path to 10x content marketing efficiency*