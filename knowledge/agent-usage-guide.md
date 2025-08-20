# Agent Usage Guide - Bill Colony Spark

## Available Slash Commands

### `/content-scorer` - YouTube Analysis & Opportunity Scoring
**Purpose:** Analyzes YouTube videos, loads client context, creates ICE-scored content opportunities

**Usage:**
```
Run /content-scorer workflow with YouTube URL: [URL] and client: [client-name]
```

**Example:**
```
Run /content-scorer workflow with YouTube URL: https://youtube.com/watch?v=ABC123 and client: nuage
```

**What it does:**
- Auto-loads client strategist-pack.md and brand-pack.md
- Transcribes YouTube video via MCP
- Extracts 10-15 key moments with timestamps
- Creates 8-12 content opportunities across all channels
- Applies ICE scoring (Impact + Confidence + Ease)
- Saves to `/AGENTS/outputs/[client]-[YYYYMMDD]-opportunities.md`

### `/content-generator` - Content Package Creation  
**Purpose:** Creates ready-to-publish content from selected opportunities

**Usage:**
```
Run /content-generator workflow for client: [client-name] with opportunities: [numbers]
```

**Example:**
```
Run /content-generator workflow for client: nuage with opportunities: #1,#3,#6
```

**What it does:**
- Loads client context and opportunities file
- Generates complete content for selected opportunities  
- Applies channel-specific formatting rules
- Creates designer briefs for visual content
- Always includes newsletter version
- Saves to `/AGENTS/outputs/[client]-[YYYYMMDD]-content-package.md`

## Complete Workflow Examples

### YouTube Video → Published Content (Full Pipeline):

**Step 1 - Analyze Video:**
```
Run /content-scorer workflow with YouTube URL: https://youtube.com/watch?v=tBGSurKRre4 and client: nuage
```
*Result: Creates `nuage-20250820-opportunities.md` with 8-12 scored opportunities*

**Step 2 - Review Opportunities:**
- Open the opportunities file
- Select which content to create (e.g., #1, #3, #6)

**Step 3 - Generate Content:**
```
Run /content-generator workflow for client: nuage with opportunities: #1,#3,#6
```
*Result: Creates `nuage-20250820-content-package.md` with ready-to-publish content*

### Typical Session Flow:
1. **YouTube URL** → `/content-scorer` → **Opportunities list**
2. **Review & Select** → human choice of top opportunities  
3. **Selected opportunities** → `/content-generator` → **Content package**
4. **Handoff** → VA/Designer gets complete brief

## File Naming Conventions

**Agent Outputs:**
- `[client]-[YYYYMMDD]-opportunities.md` (Agent 1)
- `[client]-[YYYYMMDD]-transcript.md` (Agent 1 - full raw)
- `[client]-[YYYYMMDD]-content-package.md` (Agent 2)

**Client Packs:**
- `/CLIENTS/[client]/strategist-pack.md`
- `/CLIENTS/[client]/brand-pack.md`

## Stupid Simple Rules

1. **One agent = One task**
2. **Always load client packs first** 
3. **Save everything to `/AGENTS/outputs/`**
4. **Full raw transcripts always saved**
5. **Agent 2 gets only opportunities.md file**
6. **Client selects which opportunities to generate**

## Troubleshooting

**Problem:** "Agent doesn't understand client context"
**Solution:** Make sure client packs are loaded first

**Problem:** "Transcript is incomplete" 
**Solution:** Check MCP youtube-processor connection

**Problem:** "Content doesn't match brand voice"
**Solution:** Verify brand-pack.md is loaded in Agent 2

**Problem:** "ICE scores seem wrong"
**Solution:** Review strategist-pack.md pain points and offers

---
*Keep it stupid simple*