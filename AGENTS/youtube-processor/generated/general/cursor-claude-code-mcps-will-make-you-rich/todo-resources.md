# TODO & Resources: Claude Code Subagents

## ✅ Action Steps

### Phase 1: Foundation Setup (This Week)
1. **Create Ultimate Content Repurposer Subagent**
   - Create `.claude/subagents/content-repurposer.md` with specialized prompt
   - Include viral scoring logic (1-100 scale) and ICE framework
   - Configure for YouTube transcript analysis and multi-platform output

2. **Setup MCP Servers for Enhanced Capabilities**
   ```bash
   claude mcp add brave-search -s user -- env BRAVE_API_KEY=YOUR_KEY npx -y @modelcontextprotocol/server-brave-search
   claude mcp add context7 npx -y @upstash/context7-mcp-server
   ```

3. **Test Subagent Activation**
   - Use "process this video with content repurposer subagent" command
   - Verify viral moment extraction and scoring functionality

### Phase 2: Content Pipeline (Next 2 Weeks)
1. **Build Viral Scoring System**
   - Implement 1-100 viral potential scoring for extracted moments
   - Create 4 different hooks per viral piece
   - Add ICE scoring (Impact/Confidence/Ease) for prioritization

2. **Create Platform-Specific Templates**
   - X (Twitter): Body copy + engaging hooks format
   - LinkedIn: Professional posts + optimized captions
   - TikTok/Reels/Shorts: Platform-optimized captions
   - Newsletter: Long-form post adaptations

3. **Test with Existing Content Library**
   - Process 5-10 existing long-form videos
   - Measure time reduction (target: 2 hours → 15 minutes)
   - Validate viral scoring accuracy

### Phase 3: Scale Operations (Next Month)
1. **Automate Content Workflows**
   - Create custom slash commands for repeated workflows
   - Setup batch processing for multiple videos
   - Implement quality control checkpoints

2. **Train Team on Subagent System**
   - Document subagent usage patterns
   - Create team-shared subagent library
   - Establish viral scoring standards

3. **Measure & Optimize**
   - Track content performance metrics
   - Refine viral scoring algorithms
   - Scale to 50+ scored viral moments target

## 🔗 Essential Resources

### Official Documentation
- **Claude Code Subagents:** https://docs.anthropic.com/en/docs/claude-code/sub-agents
- **Model Context Protocol:** https://modelcontextprotocol.io/quickstart/server
- **Claude Code Best Practices:** https://www.anthropic.com/engineering/claude-code-best-practices

### MCP Setup Resources
- **MCP with Claude Tutorial:** https://www.codecademy.com/article/how-to-use-model-context-protocol-mcp-with-claude-step-by-step-guide-with-examples
- **Build AI Agent with MCP:** https://neurlcreators.substack.com/p/build-ai-agent-with-claude-and-mcp
- **MCP Servers Collection:** https://github.com/VoltAgent/awesome-claude-code-subagents

### Implementation Guides
- **Enhancing Claude Code with MCP:** https://dev.to/oikon/enhancing-claude-code-with-mcp-servers-and-subagents-29dd
- **Subagents + MCP Tutorial:** https://medium.com/google-cloud/claude-code-subagents-mcp-soc-ai-runbooks-️-8ead2e2f7745
- **DataCamp MCP Guide:** https://www.datacamp.com/tutorial/mcp-model-context-protocol

### Community Resources
- **Awesome Subagents Collection:** https://github.com/VoltAgent/awesome-claude-code-subagents
- **Anthropic MCP Announcement:** https://www.anthropic.com/news/model-context-protocol

## 🛠️ Technical Notes

### Subagent File Structure
```markdown
---
name: content-repurposer
description: Extracts viral moments from long-form content with scoring
tools: web_search, file_read, file_write
---

You are the Ultimate Content Repurposer specializing in viral moment extraction...
```

### Key Commands
```bash
# Activate subagent
"Use content repurposer subagent to process this video"

# Custom slash commands (place in .claude/commands/)
/repurpose-video
/viral-score
/multi-platform-generate
```

### Viral Scoring Framework
- **Impact (1-10):** Potential reach and engagement
- **Confidence (1-10):** Certainty of viral success
- **Ease (1-10):** Simplicity of implementation
- **Final Score:** (Impact × Confidence × Ease) / 10

### Success Metrics
- **Speed:** 2 hours → 15 minutes content creation
- **Volume:** 1 video → 20+ social posts
- **Quality:** Viral scoring 70+ for published content
- **Consistency:** 50+ scored viral moments per month

---

*Resources compiled for immediate Claude Code subagent implementation with viral content focus*