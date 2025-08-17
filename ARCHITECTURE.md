# 🏗️ Architecture Decision Records

Documentation of key architectural decisions and their reasoning for the Bill Colony Spark project.

## Overview

This document captures WHY specific structural decisions were made, not WHAT the structure contains. Each decision record follows the format: Context → Decision → Consequences.

## ADR-001: Project Structure Reorganization (August 2025)

### Context
- Initial project had chaotic file organization with scattered materials
- PROJECT/ folder contained mixed technical and client-facing content
- Files duplicated across multiple locations
- Difficult to find and maintain project materials
- Need for professional client reporting vs. technical logs

### Decision
Restructured entire project into functional domains:
- `CLIENTS/` - Client-specific materials only
- `KNOWLEDGE/` - Centralized reference materials
- `TOOLS/` - Technical infrastructure
- `AGENTS/` - AI automation systems
- `TRAINING/` - Learning materials (project-specific)

### Consequences
✅ **Positive:**
- Clear separation of concerns
- No file duplication
- Easy to scale for new clients
- Professional structure for client materials

⚠️ **Negative:**
- One-time migration effort required
- Need to update existing references

## ADR-002: Client Reporting vs Technical Logs Separation

### Context
- CHANGELOG.md was being used for both technical changes and client progress
- Clients need business-focused reports, not technical commit logs
- Mixing audiences creates confusion and unprofessional appearance

### Decision
- `CHANGELOG.md` → Technical change history (moved to TOOLS/)
- `PROJECT-REPORT.md` → Client-facing executive summary
- Different formats: Keep a Changelog vs. Business value reporting

### Consequences
✅ **Positive:**
- Professional client communication
- Clear separation of technical vs. business information
- Better tracking of delivered value

⚠️ **Negative:**
- Maintain two different reporting systems

## ADR-003: English-Only Documentation Standard

### Context
- Mixed Russian/English content created inconsistency
- International collaboration requires common language
- CLAUDE.md explicitly specified English requirement

### Decision
All documentation must be written in English, no exceptions.

### Consequences
✅ **Positive:**
- Consistent professional appearance
- Easier collaboration with international team members
- Follows established project guidelines

⚠️ **Negative:**
- Translation effort for existing Russian content

## ADR-004: Directory-Level README Strategy

### Context
- Large project structure needed navigation aids
- Users unfamiliar with structure need quick orientation
- Balance between helpful guidance and documentation bloat

### Decision
Create minimal README files for each major directory containing:
- Single-line purpose description
- Basic contents overview
- NO architectural decisions (refer to this file)

### Consequences
✅ **Positive:**
- Quick navigation for new users
- Clear directory purposes
- Minimal maintenance overhead

⚠️ **Negative:**
- Additional files to maintain
- Risk of information duplication if not managed carefully

## ADR-005: Call Transcripts Organization

### Context
- Call transcripts were scattered in multiple locations
- Initially assumed client calls, actually internal project calls
- Need clear distinction between client materials and internal project documentation

### Decision
- Internal project calls → `KNOWLEDGE/SOURCES/project-calls/`
- Client calls → `CLIENTS/[client-name]/call-transcripts/`
- Clear naming convention to distinguish source

### Consequences
✅ **Positive:**
- Clear separation of internal vs. client materials
- Proper categorization of knowledge sources
- Easier to find relevant transcripts

⚠️ **Negative:**
- Required file relocation and reference updates

## ADR-006: Automation Commands in CLAUDE.md

### Context
- Repetitive tasks for session logging and client updates
- Need consistent format for project reporting
- Claude Code can automate routine documentation tasks

### Decision
Added automation commands to CLAUDE.md:
- `update project status` - Session logging
- `generate slack update` - Casual progress messages
- `update README weekly` - Weekly summary generation

### Consequences
✅ **Positive:**
- Consistent reporting format
- Time savings on routine tasks
- Reduced manual errors

⚠️ **Negative:**
- Dependency on Claude Code for updates
- Need to maintain command definitions

## ADR-007: Valuable_Assets Legacy Handling

### Context
- Pre-existing Valuable_Assets/ directory with useful content
- New KNOWLEDGE/ structure provides better organization
- Need to preserve existing work while improving structure

### Decision
- Keep Valuable_Assets/ temporarily for reference
- Gradually migrate relevant content to KNOWLEDGE/
- Do not create new content in Valuable_Assets/

### Consequences
✅ **Positive:**
- No loss of existing work
- Smooth transition to new structure
- Clear migration path

⚠️ **Negative:**
- Temporary duplication during migration
- Extra maintenance until migration complete

## Design Principles

### 1. Single Source of Truth
Each piece of information should exist in exactly one place to prevent inconsistencies.

### 2. Functional Organization
Group files by what they do, not arbitrary categories.

### 3. Scalability
Structure should easily accommodate new clients and projects.

### 4. Professional Presentation
Client-facing materials must maintain professional standards.

### 5. Automation-Friendly
Structure should support automated tools and workflows.

## Future Considerations

### Scaling for Multiple Clients
- Each new client gets standardized folder structure
- Templates ensure consistency across clients
- Project setup guide provides replication blueprint

### Tool Integration
- GitHub Actions for automated changelog
- Claude Code automation commands
- Potential CI/CD for documentation generation

### Knowledge Management
- KNOWLEDGE/ directory as central reference hub
- Clear sourcing and attribution
- Regular cleanup and organization

---

**Usage Note**: When making structural changes, add new ADR entry explaining context, decision, and consequences. This maintains clear history of architectural evolution.