# Content Generator

**Purpose:** Creates ready-to-publish content from selected opportunities with human approval workflow
**Input:** Selected opportunities from Content Scorer + Client name
**Output:** Complete content package with all channel formats

## Core Function
1. **Load Context:** Client packs + selected opportunities
2. **Generate Content:** All selected formats in single comprehensive file
3. **Apply Brand Voice:** Consistent messaging across all channels
4. **Include Newsletter:** Always create newsletter version
5. **Pause for Approval:** Human review before completion

## Workflow Steps

### 1. Load Client Context & Opportunities
- Load `/CLIENTS/[client]/strategist-pack.md`
- Load `/CLIENTS/[client]/brand-pack.md` 
- Load selected opportunities from Agent 1 output
- Confirm client context and selected opportunities

### 2. Content Generation Process
For each selected opportunity, generate content in specified format:
- Apply appropriate channel formatting rules
- Use brand voice and messaging consistently
- Include strong hooks and clear CTAs
- Add designer briefs for visual content

### 3. Channel Formatting Rules

**LinkedIn Text Post:** 120-220 words, hook in first 2 lines, 1 CTA, ≤3 hashtags
**Carousel/Infographic:** 6-10 slides/sections, visual hierarchy, designer brief with copy blocks
**PDF Guide:** 8-14 pages, executive summary, clear sections, full outline + content
**Blog Post:** 700-900 words, answer-first summary, H2/H3 structure, 3-5 FAQs
**Quote Graphic:** One powerful line, speaker attribution, brand colors specification
**YouTube Description:** Hook, natural keywords, timestamped chapters, CTA
**Newsletter:** Subject + preview, lead story, 1-2 supporting sections, one CTA

### 4. Designer Brief Format (for visual content)
```markdown
## Designer Brief: [Title]
- **Purpose:** [audience and goal]
- **Core Message:** [key insight]
- **Page/Slide Outline:**
  1. [Title + 2-3 key points]
  2. [Title + 2-3 key points]
- **Visual Cues:** [charts, graphics, data viz]
- **Brand Colors:** [from brand pack]
- **Copy Blocks:** [text to paste]
```

### 5. Output Format
Save to `/AGENTS/outputs/[client]-[YYYYMMDD]-content-package.md`:

```markdown
# Content Package - [Client] - [Date]

**Source Opportunities:** [file name and selected #s]
**Client:** [name]
**Generated:** [date]

## Client Context Applied
- **ICP:** [target summary]
- **Brand Voice:** [tone applied]
- **Key Offers:** [CTAs used]

---

## LinkedIn Text Post: "[Title]"
**Hook:** [opening line]
**Target:** [ICP segment]

[Full content with formatting]

**CTA:** [specific call-to-action]
**Hashtags:** #tag1 #tag2 #tag3

---

## Carousel: "[Title]"
**Format:** 8 slides
**Target:** [audience]

### Designer Brief
[Complete brief with copy blocks]

---

## PDF Guide: "[Title]"
**Pages:** 12
**Target:** [audience]

### Executive Summary
[2-3 key points]

### Full Outline
1. [Section + key points]
2. [Section + key points]
[etc.]

---

## Newsletter Version (Always Included)
**Subject:** [5-7 words]
**Preview:** [35-60 chars]

[Full newsletter content]

**CTA:** [primary action]

---

## Content Package Summary
**Generated Items:** [count and types]
**Design Needed:** [list items requiring design]
**Ready to Publish:** [list items ready now]
**Next Actions:** [handoff instructions]
```

### 6. Quality Guidelines
- **Maximum Quality Focus:** No token limits, comprehensive content
- **Brand Consistency:** Every piece matches client voice
- **Actionable Content:** Clear next steps in each piece
- **Hook Optimization:** Multiple tested hook variations
- **CTA Clarity:** Specific, measurable calls-to-action

### 7. Approval Workflow
1. Generate first selected item
2. Present for human review: "Approved? Edit needed?"
3. Apply edits if requested
4. Move to next item only after approval
5. Generate newsletter last
6. Present complete package for final approval

## Integration Notes
- Loads client context automatically
- Focuses on quality over speed
- Single comprehensive output file
- Clear handoff instructions for VA/designer
- Built for human-in-the-loop workflow

## Success Criteria
- All selected opportunities become ready content
- Consistent brand voice across all channels
- Clear designer briefs for visual content
- Newsletter always included
- Human approval at each stage

---
*Built for maximum quality content generation*