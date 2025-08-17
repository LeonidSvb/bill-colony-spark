# Claude Code Memory - Bill Colony Spark Project

## Project Context
Marketing automation project for Bill Murphy's Colony Spark agency.

## Key Commands
- `git status` - Check repository status
- `git add .` - Stage all changes
- `git commit -m "message"` - Commit changes with Claude Code attribution
- `update project status` - Add new session log to PROJECT/project-status.md
- `update README weekly` - Update README based on week's progress from project-status.md
- `generate slack update` - Create casual Slack message from latest session for Bill

## File Structure Conventions
- Use kebab-case for file names
- Organize by functional areas (prompts, templates, examples, tools)
- Keep related materials together in subdirectories
- Place documentation at appropriate hierarchy levels

## Documentation Standards
- Write all new documentation in English
- Use consistent markdown formatting with emojis for section headers
- Include practical examples where applicable
- Keep content concise and actionable

## Development Workflow
- Always read existing files before making changes
- Use MultiEdit for multiple changes to same file
- Prefer editing existing files over creating new ones
- Follow existing patterns and conventions in codebase
- When plan is approved, execute all steps without asking permission
- Use `claude --dangerously-skip-permissions` for automated operations

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

## Automation Features
- Changelog automatically updates on every push to main
- GitHub Actions validate structure and deploy docs
- Manual changelog update: `npm run changelog`
- Force changelog with version: `npm run changelog:version "1.1.0"`
- Always use descriptive, valuable names.
- "ALWAYS write in English - no Russian text in any files