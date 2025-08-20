# Claude Code Slash Command Integration

This document provides the Claude Code prompts and workflows for the slash command system.

## Usage in Claude Code

When you want to use the slash commands, copy and paste the appropriate prompt below:

### /content-scorer Command

```
I need you to run the Content Scorer agent workflow:

1. **Load Client Context**: Read clients/[CLIENT]/strategist-pack.md and clients/[CLIENT]/brand-pack.md
2. **Process YouTube Video**: Use MCP youtube-processor to transcribe [YOUTUBE_URL]
3. **Save Transcript**: Save to agents/outputs/[CLIENT]-[YYYYMMDD]-transcript.md
4. **Extract Key Moments**: Identify 10-15 key moments with timestamps
5. **Generate Opportunities**: Create opportunities across all channels (LinkedIn, Carousel, PDF, Blog, Quote, YouTube Description, Newsletter)
6. **Apply ICE Scoring**: Score each opportunity (Impact 0-10, Confidence 0-10, Ease 0-10, +2 BOFU bonus)
7. **Save Results**: Save to agents/outputs/[CLIENT]-[YYYYMMDD]-opportunities.md

Parameters:
- YouTube URL: [YOUTUBE_URL]
- Client: [CLIENT]

Follow the exact format from agents/content-scorer.md
```

### /content-generator Command

```
I need you to run the Content Generator agent workflow:

1. **Load Client Context**: Read clients/[CLIENT]/strategist-pack.md and clients/[CLIENT]/brand-pack.md
2. **Load Opportunities**: Read the latest agents/outputs/[CLIENT]-*-opportunities.md file
3. **Select Opportunities**: Extract opportunities [OPPORTUNITY_NUMBERS] from the file
4. **Generate Content**: Create content for each selected opportunity following channel rules:
   - LinkedIn Text Post: 120-220 words, hook in first 2 lines, 1 CTA, ≤3 hashtags
   - Carousel/Infographic: 6-10 slides, designer brief with copy blocks
   - PDF Guide: 8-14 pages, executive summary, full outline + content
   - Blog Post: 700-900 words, H2/H3 structure, 3-5 FAQs
   - Quote Graphic: One powerful line, designer brief
   - YouTube Description: Hook, keywords, chapters, CTA
   - Newsletter: Subject + preview, lead story, 1-2 sections, CTA
5. **Apply Brand Voice**: Use consistent messaging from brand-pack.md
6. **Create Designer Briefs**: For visual content (Carousel, PDF, Quote)
7. **Include Newsletter**: Always create newsletter version combining all opportunities
8. **Save Package**: Save to agents/outputs/[CLIENT]-[YYYYMMDD]-content-package.md

Parameters:
- Client: [CLIENT]
- Opportunities: [OPPORTUNITY_NUMBERS] (e.g., #1,#3,#6)

Follow the exact format from agents/content-generator.md
```

## Quick Reference Commands

### Content Scorer
```bash
# In Claude Code, use this prompt:
"Run /content-scorer workflow with YouTube URL: [URL] and client: [CLIENT]"
```

### Content Generator  
```bash
# In Claude Code, use this prompt:
"Run /content-generator workflow for client: [CLIENT] with opportunities: [NUMBERS]"
```

## File Path Conventions

- **Client Context**: `clients/[client]/strategist-pack.md` and `clients/[client]/brand-pack.md`
- **Transcripts**: `agents/outputs/[client]-[YYYYMMDD]-transcript.md`
- **Opportunities**: `agents/outputs/[client]-[YYYYMMDD]-opportunities.md`  
- **Content Packages**: `agents/outputs/[client]-[YYYYMMDD]-content-package.md`

## Available Clients

Currently configured:
- **nuage** (NetSuite consultants)

## MCP Integration

The system uses these MCP servers:
- **youtube-processor**: For video transcription
- **google-workspace**: For document management (optional)

## Channel Format Rules

### LinkedIn Text Post
- 120-220 words
- Hook in first 2 lines
- 1 CTA maximum
- ≤3 hashtags
- Conversational tone

### Carousel/Infographic  
- 6-10 slides/sections
- Visual hierarchy
- Designer brief with copy blocks
- Clear progression of ideas

### PDF Guide
- 8-14 pages
- Executive summary
- H2/H3 structure
- Full outline + content
- Professional formatting

### Blog Post
- 700-900 words
- Answer-first summary
- H2/H3 structure  
- 3-5 FAQs
- SEO optimized

### Quote Graphic
- One powerful line
- Speaker attribution
- Brand colors specification
- High visual impact

### YouTube Description
- Hook opening
- Natural keywords
- Timestamped chapters
- Clear CTA

### Newsletter
- Subject (5-7 words)
- Preview (35-60 chars)
- Lead story
- 1-2 supporting sections
- Single CTA

## ICE Scoring Guidelines

### Impact (0-10)
- Does it directly advance buyer to action?
- Does it address specific ICP pain point?
- +2 bonus if BOFU (addresses objection/offer)

### Confidence (0-10)  
- Can you defend claims with examples from video?
- Clear, specific examples: 7-9
- Opinion/theory based: 4-6

### Ease (0-10)
- Ready with light editing: 8-10
- Needs design work: 5-7
- Requires heavy research: 2-4

## Integration with Existing Workflow

1. **Morning Planning**: Run /content-scorer on new videos
2. **Content Selection**: Review ICE scores, select top opportunities
3. **Content Creation**: Run /content-generator on selected opportunities
4. **Review & Approval**: Human review of generated content
5. **Design Handoff**: Send designer briefs to VA/designer
6. **Publishing**: Schedule content across channels

## Error Handling

- **Missing Client**: Check clients/[name]/ directory exists
- **No Opportunities**: Run /content-scorer first
- **MCP Issues**: Fallback to manual transcription
- **File Permissions**: Ensure agents/outputs/ is writable

---
*Built for maximum efficiency in Bill's content marketing workflow*