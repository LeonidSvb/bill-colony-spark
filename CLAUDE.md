# Claude Code Memory - Bill Colony Spark Project

## Project Context
Marketing automation project for Bill Murphy's Colony Spark agency.

**Single Objective:** Increase Bill's marketing efficiency by 5-10x using Claude Code agents and subagents.

## Core Workflow
Build and deploy agents that transform Bill's manual marketing tasks into automated workflows. Focus on content repurposing as primary use case.

## Key Commands
- `git status` - Check repository status
- `git add .` - Stage all changes  
- `git commit -m "message"` - Commit with Claude Code attribution
- `update project status` - Add session log to README.md

## File Structure Conventions
- Use kebab-case for file names
- Keep 2-level folder structure maximum
- Organize by functional areas (agents, clients, knowledge, tools)
- Client outputs: `clients/[client]/outputs/topic-type-monthDD.md`
- Agent outputs: `agents/[agent]/outputs/` for non-client work only

## Documentation Standards
- Write all documentation in English
- Use consistent markdown formatting
- Include practical examples
- Keep content concise and actionable
- Focus on what Bill needs to know

## Development Workflow
- **Always prefer editing existing files** over creating new ones
- **Create new files only when essential** (new major component, new client)
- Always read existing files before making changes
- Use MultiEdit for multiple changes to same file
- Follow existing patterns and conventions in codebase
- When plan is approved, execute all steps without asking permission

## Agent Philosophy
- **Build what Bill needs** - solve specific marketing automation problems
- **Start with content repurposing** - highest impact area
- **Keep agents simple** - one clear function per agent
- **Test with real content** - use actual client work (Nuage)
- **Measure efficiency gains** - track time savings

## Efficiency Guidelines
- Use MultiEdit instead of multiple Edit calls
- Batch file operations when possible
- Read files in parallel when gathering information
- Prefer concise but complete solutions
- Minimize token usage while maintaining quality

## Git Practices
- Never commit unless explicitly requested by user
- Include Claude Code attribution in commit messages:
  ```
  🤖 Generated with [Claude Code](https://claude.ai/code)
  
  Co-Authored-By: Claude <noreply@anthropic.com>
  ```
- Check git status before and after commits

## Session Logging Rules
- **Multiple sessions per day:** Separate entries for different focuses
- **Single session per day:** Combine if <30min and same topic  
- **Session naming:** Use "Aug 20.1", "Aug 20.2" for multiple or "Aug 20" for single
- **When to separate:** Different tasks, >1hr break, context change
- **When to combine:** Related work, quick fixes, same workflow
- **Update README.md:** Add session summary after completion

## Project Success Metrics
- **Primary Goal:** 5-10x efficiency improvement for Bill
- **Measure:** Time reduction on marketing tasks
- **Evidence:** Before/after comparisons on real work
- **Focus:** Content repurposing workflow first

## Client Context
- **Primary Client:** Nuage (NetSuite consultants)  
- **Content:** Technical/business focused
- **Channels:** LinkedIn, email, blog, PDF guides
- **Pain Points:** Manual content creation takes too long

## MCP Integration
- Use MCP servers when available (youtube-processor, google-workspace)
- Fallback to local tools when needed (tools/_deprecated)
- Configure via .claude.json for project-specific needs

## Agent Architecture Standards
### Required Folder Structure
```
.claude/agents/[agent-name]/
├── [agent-name].md (main config)
├── activity.log (session history) 
└── outputs/ (non-client work only)
```

### Agent Config Requirements
- YAML frontmatter: name, description, model, color
- Core responsibilities section
- Client Context Management section (MANDATORY):
  ```markdown
  When working with clients:
  1. Read client profile: .claude/knowledge/clients/[client]/profile.md
  2. Save outputs: clients/[client]/outputs/topic-type-monthDD.md  
  3. Update context: Add insights to profile "Context Updates Log"
  4. Log activity: Record in activity.log with file paths
  ```

### File Naming Standards
- Agent folders: kebab-case
- Client outputs: `topic-type-monthDD.md` (e.g., `tariff-opportunities-aug22.md`)
- Agent outputs: `project-type-monthDD.md` for non-client work

### Corrupted File Prevention
- If files like `CUsers79818Desktop...` appear, they are bash snapshot artifacts
- These occur due to Claude Code internal processes
- Delete manually if they appear and don't affect functionality

## Automation Features
- Manual changelog update: `npm run changelog`
- Always use descriptive, valuable commit messages
- ALWAYS write in English - no Russian text in any files