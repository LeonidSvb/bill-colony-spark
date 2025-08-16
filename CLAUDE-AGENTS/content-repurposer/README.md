# 🤖 CONTENT REPURPOSER AGENT

## 📝 OVERVIEW
This agent transforms YouTube videos, transcripts, and long-form content into multiple marketing assets optimized for different channels.

**Input:** YouTube video/transcript + Client pack  
**Output:** Scored content recommendations + formatted assets  
**Time Savings:** 2 hours → 15 minutes per video

---

## 🏗️ AGENT ARCHITECTURE

### CORE COMPONENTS
1. **Content Analyzer** - Extracts key insights and moments
2. **Opportunity Finder** - Identifies content possibilities with ICE scoring  
3. **Format Optimizer** - Creates channel-specific content
4. **Quality Controller** - Reviews and refines output

### SUPPORTED FORMATS
- LinkedIn posts (120-220 words)
- PDF guides (8-14 pages) 
- Carousels/Infographics (6-10 slides)
- Blog posts (700-900 words)
- Quote graphics (single line + attribution)
- YouTube descriptions (SEO optimized)
- Newsletter content

---

## 📦 CLIENT PACK SYSTEM

### REQUIRED PACKS
1. **Strategist Pack** (`client-packs/[client]-strategist.md`)
   - ICP definition
   - Pain points and jobs-to-be-done
   - Offers and CTAs
   - Success metrics

2. **Brand Pack** (`client-packs/[client]-brand.md`)
   - Brand voice and tone
   - Messaging pillars
   - Visual guidelines
   - Do's and don'ts

### PACK TEMPLATES
- Use templates in `client-packs/templates/`
- Maximum 1,200 words per pack
- Update when strategy changes
- Version control recommended

---

## 🎯 ICE SCORING SYSTEM

### SCORING CRITERIA
- **Impact (0-10):** Direct advancement of buyer journey (+2 for BOFU)
- **Confidence (0-10):** Ability to defend claims with examples
- **Ease (0-10):** Production complexity and resource requirements

### SCORING GUIDELINES
- **Impact High (8-10):** Addresses core pain points, includes proof
- **Confidence High (8-10):** Data-backed, case studies available
- **Ease High (8-10):** Text-only, minimal design needed

---

## 🚀 USAGE WORKFLOW

### STANDARD PROCESS
1. Load client packs for session
2. Ingest source content (video/transcript)
3. Analyze content for key moments
4. Generate content opportunities with ICE scores
5. Select top 3-5 opportunities for production
6. Create formatted content with approval checkpoints
7. Generate always-included newsletter version

### QUALITY GATES
- Human approval required before content creation
- Brand voice verification on every piece
- ICE score minimum threshold: 15+
- Format-specific guidelines enforced

---

## 📊 PERFORMANCE TRACKING

### KEY METRICS
- Processing time per video
- Content approval rate
- ICE score accuracy
- Format distribution
- Client satisfaction scores

### OPTIMIZATION AREAS
- Prompt refinement based on feedback
- Format template improvements  
- Client pack updates
- Workflow efficiency gains

---

## 🔧 FILES & FOLDERS

```
content-repurposer/
├── prompts/
│   ├── analyzer.md
│   ├── opportunity-finder.md
│   ├── format-creators/
│   └── quality-controller.md
├── client-packs/
│   ├── templates/
│   ├── nuage-strategist.md
│   └── nuage-brand.md
├── examples/
│   ├── input-samples/
│   ├── output-samples/
│   └── before-after/
└── README.md (this file)
```

---

## 📋 MAINTENANCE

### REGULAR UPDATES
- Review client packs monthly
- Update prompts based on feedback
- Add new format templates as needed
- Monitor performance metrics

### VERSION CONTROL
- Document prompt changes
- Track performance impact
- Maintain rollback capability
- Share improvements across clients

---

*Last Updated: August 16, 2025*  
*Next Review: September 16, 2025*