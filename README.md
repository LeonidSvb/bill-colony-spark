# 🚀 Bill Colony Spark - AI Content Automation

**Project:** AI-powered marketing automation using Claude Code subagents  
**Client:** Bill Murphy  
**Duration:** 30 days (Aug 16 - Sep 15, 2025)  
**Goal:** Build reusable subagent system for 2 hours → 15 minutes content creation
**End Goal:** Bill independently operates Claude subagent workflows for all marketing tasks

---

## 📂 Project Structure

```
Bill-Colony-Spark/
├── 🤖 AGENTS/          # AI agents and their generated content
├── 👥 CLIENTS/         # Client configurations and packs
├── 📚 KNOWLEDGE/       # Methodology and best practices
├── 🎓 TRAINING/        # Bill's learning materials
├── 📊 PROJECT/         # Project management and updates
└── 📋 CLAUDE.md        # Claude Code memory and conventions
```

## 🎯 Quick Start

### For Bill (Daily Use)
1. **Load Agent:** [Main prompt](AGENTS/content-repurposer/main-prompt.md) for your specific task
2. **Load Client:** [Strategist pack](CLIENTS/nuage/strategist-pack.md) + [Brand pack](CLIENTS/nuage/brand-pack.md)
3. **Process Content:** Follow [quick-start guide](TRAINING/quick-start.md)
4. **Review Output:** Check generated content for quality and brand alignment
5. **Save Results:** Generated files in [AGENTS/content-repurposer/generated/](AGENTS/content-repurposer/generated/)

### For Development Team
- **Progress Tracking:** [Project status](PROJECT/progress-overview.md)
- **Agent Development:** Build and maintain AI agents in [AGENTS/](AGENTS/) folder
- **Knowledge Updates:** [Centralized methodologies](KNOWLEDGE/) and best practices
- **Client Onboarding:** Use [templates](CLIENTS/_templates/) for new client setup

## 🔧 Key Components

### 🤖 Content Repurposer Subagent
- **Type:** Specialized Claude Code subagent with dedicated context
- **Input:** YouTube videos, transcripts, Fathom recordings, long-form content
- **Output:** LinkedIn posts, PDF guides, carousels, blog posts, newsletters, Reddit comments
- **Intelligence:** ICE scoring system, automatic format recommendation
- **Workflow:** Load client packs → Analyze content → Score opportunities → Generate assets

### 👥 Client System  
- **Multi-Client Setup:** Each client has dedicated folder with packs
- **Strategist Pack:** ICP definition, pain points, offers, CTAs
- **Brand Pack:** Voice, tone, messaging, visual guidelines
- **Reusable Framework:** Easy duplication for new clients

### 📚 Knowledge Base
- **ICE Scoring:** Content prioritization methodology
- **Content Formats:** Multiple output types (LinkedIn, PDF, carousels, etc.)
- **Workflows:** Documented processes for content creation
- **Best Practices:** Templates and guidelines for consistent quality

### 🛠️ Subagent Architecture
- **Claude Code:** Primary environment with intelligent task routing
- **Specialized Subagents:** Content Repurposer, SEO Analyzer, CRO Optimizer
- **MCP Tools:** YouTube extraction, Airtable integration, Google Workspace
- **Proactive Delegation:** Automatic subagent selection based on task type
- **Context Management:** Separate context windows for each specialized function
- **Reusable Framework:** Project-level subagents for consistent workflows

## 📊 Current Status

**Week 1 Progress:** 20% complete  
**Next Milestone:** Working content repurposer MVP  
**Key Metrics:** 0 subagents operational (target: 5+ specialized subagents)
**Success Criteria:** Bill independently creates and manages subagent workflows

## 🆘 Support & Documentation

- **Quick Help:** [Quick-start guide](TRAINING/quick-start.md) (5 min read)
- **Full Training:** [Complete learning materials](TRAINING/week-by-week-plan.md)
- **Common Issues:** [Reference materials](TRAINING/reference/common-prompts.md) and prompts
- **Project Updates:** [Current status](PROJECT/progress-overview.md) and milestones

---

## 🚀 Getting Started with Subagents

1. **Setup Claude Code:** Install and configure with MCP tools
2. **Load Subagents:** Import project-level subagents from AGENTS folder
3. **Test Workflow:** Use `/agents` command to activate Content Repurposer
4. **Practice Delegation:** Let Claude automatically route tasks to specialists
5. **Build Library:** Create reusable subagents for each client and function

**End Goal:** Bill operates complete subagent ecosystem independently by month end

**Questions?** Check [PROJECT folder](PROJECT/) for updates or review [call transcripts](PROJECT/call-transcripts/) for detailed discussions.

---

