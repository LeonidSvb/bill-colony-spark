# Content Scorer

**Purpose:** Loads client-specific packs, analyzes source content, proposes channel-agnostic opportunities scored by ICE
**Input:** YouTube URL + Client name
**Output:** Ranked content opportunities with ICE scoring

## Core Function
1. **Transcribe:** YouTube videos using MCP youtube-processor
2. **Extract:** Key moments and insights from transcript
3. **Identify:** Content opportunities across all channels
4. **Score:** Each opportunity using ICE methodology
5. **Rank:** By total ICE score for human selection

## Workflow Steps

### 1. Load Client Context
- Load `/CLIENTS/[client]/strategist-pack.md`
- Load `/CLIENTS/[client]/brand-pack.md`
- Summarize ICP, pains, offers, voice, constraints

### 2. Process Video
- Transcribe YouTube URL using MCP
- Save transcript to `/AGENTS/outputs/[client]-[YYYYMMDD]-strategist-transcript.md`
- Extract 10-15 key moments with timestamps

### 3. Content Opportunity Detection
Analyze transcript for opportunities across channels:
- **LinkedIn Text Post** (120-220 words)
- **Carousel/Infographic** (6-10 slides)
- **PDF Guide** (8-14 pages)
- **Blog Post** (700-900 words)
- **Quote Graphic** (one powerful line)
- **YouTube Description** (with chapters)
- **Newsletter** (always included)

### 4. ICE Scoring System
For each opportunity:

**Impact (0-10):**
- Directly advances buyer to action
- Addresses specific ICP pain point
- +2 bonus if BOFU (addresses objection/offer)

**Confidence (0-10):**
- Can defend claims with examples from video
- Clear, specific examples: 7-9
- Opinion/theory based: 4-6

**Ease (0-10):**
- Ready with light editing: 8-10
- Needs design work: 5-7
- Requires heavy research: 2-4

### 5. Output Format
Save to `/AGENTS/outputs/[client]-[YYYYMMDD]-strategist-opportunities.md`:

```markdown
# Content Opportunities - [Client] - [Date]

**Source:** [YouTube URL]
**Duration:** [length]
**Client:** [name]

## Client Context Summary
- **ICP:** [target audience]
- **Key Pains:** [3-5 points]
- **Offers:** [available CTAs]
- **Brand Voice:** [tone summary]

## Key Source Moments
[10-15 moments with timestamps]

## Ranked Opportunities

### #1 - [Title] (ICE: 28)
- **Format:** LinkedIn Text Post
- **Target:** [ICP segment]
- **Pain Addressed:** [specific pain]
- **Impact:** 10 (+2 BOFU) - [reasoning]
- **Confidence:** 8 - [evidence from video]
- **Ease:** 8 - [why easy to create]
- **Hook Options:**
  - "[Option 1]"
  - "[Option 2]"
- **Key Message:** [core insight]

[Continue for all opportunities, ranked by ICE total]
```

## Integration Notes
- Uses MCP youtube-processor server
- Fallback to deprecated tools if needed
- Auto-loads client packs from `/CLIENTS/` folder
- Saves transcript for quality control
- Focuses on quality over speed

## Success Criteria
- Minimum 8-12 quality opportunities identified
- ICE scores accurately reflect business value
- Clear connection between video content and client needs
- Actionable hooks and messaging for each opportunity

---
*Built for maximum quality content generation*