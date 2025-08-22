# Clay Signal Analyzer - Outputs

## Current Files

### Test Results
- `signal-history.json` - Tracks analyzed signals to prevent duplicates  
- `engagement-tracking.json` - Records engagement success metrics

### Usage
1. Place Clay CSV export in `.claude/data/clay/`
2. Run: "Analyze Clay data for [client]"
3. Review generated report in this directory
4. Execute top-scored opportunities

### Expected Output Files
- `YYYY-MM-DD-[client]-signal-analysis.md` - Daily analysis reports
- `YYYY-MM-DD-[client]-weekly-digest.md` - Weekly summaries
- Signal tracking JSON files (auto-updated)

## Performance Tracking
- Score threshold: 30+ = immediate action
- Target: 5-7 quality engagements per week
- Success metric: 2-3 qualified leads per month