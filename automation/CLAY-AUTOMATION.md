# Clay Automation Setup Guide

## 🚀 Quick Start (For Bill)

### What This Does
Every Monday at 9 AM, your computer will automatically:
1. Connect to your Clay account
2. Analyze all new signals from the past week
3. Create a report with actionable opportunities
4. Save it to your Desktop in `clay-reports/` folder

### 📋 Setup Checklist

**Step 1: Get Your Clay API Key**
1. Go to your Clay dashboard
2. Settings → API Keys → Generate New Key  
3. Copy the key (starts with `clay_sk_...`)
4. **IMPORTANT:** Send this key to your developer securely

**Step 2: Installation (Done by Developer)**
- Clay MCP server installation
- Configuration setup
- Testing and validation

**Step 3: Weekly Automation**
- Scheduled task setup for Monday 9 AM
- Output folder creation on Desktop
- Error notifications configured

## 🖥 How to Use

### Automatic Mode (Recommended)
- **Nothing to do!** Reports appear every Monday morning
- Check `C:\Users\79818\Desktop\clay-reports\` for new files
- Files named like: `Clay-Weekly-2025-08-22.md`

### Manual Mode (If Needed)
**Desktop Shortcuts:**
- **"Get Clay Report Now"** - Double-click for instant analysis
- **"Check Clay System"** - Verify everything is working

**Advanced (PowerShell):**
```powershell
# Get report now
.\clay-manual-run.ps1

# Check system health
.\health-check.ps1

# View logs
Get-Content automation\logs\automation.log
```

## 📊 What You'll See in Reports

### Weekly Report Example:
```
# Clay Signal Analysis - 2025-08-22

## 🔥 Top Opportunities
1. **NetSuite Migration Thread - Reddit**
   - Someone needs help with QuickBooks → NetSuite
   - Your expertise: Perfect match
   - Engagement potential: High
   - Suggested response: [Draft provided]

## 📈 This Week's Trends  
- 15 mentions of "NetSuite migration"
- Hot topic: Inventory management issues
- Best engagement time: Tuesday mornings

## 💡 Content Ideas
- Blog post: "5 NetSuite Migration Mistakes"
- LinkedIn: Share inventory optimization tip
```

## 🛠 Troubleshooting

### Common Issues

**"No reports appearing"**
1. Check Clay API key is set correctly
2. Run health check: Double-click "Check Clay System"
3. Check logs in `automation\logs\`

**"Reports are empty"**
1. Verify Clay data sources are active
2. Check API limits haven't been exceeded
3. Review signal filters in Clay dashboard

**"Scheduled task not running"**
1. Check Windows Task Scheduler
2. Verify PowerShell execution policy
3. Run manual test first

### Getting Help

**Immediate Help:**
- Run: `.\health-check.ps1` (shows what's broken)
- Check: `automation\logs\errors.log`
- Try: `.\clay-manual-run.ps1` (manual test)

**Contact Developer:**
- Telegram: [Your handle]
- Include: Error message + screenshots
- Response time: Usually within 1 hour

## 🔧 Advanced Configuration

### Changing Schedule
```powershell
# Change to Wednesday 2 PM
.\setup-scheduler.ps1 -ScheduleDay Wednesday -ScheduleTime "14:00"
```

### Custom Output Location
```powershell
# Save reports to different folder
.\clay-manual-run.ps1 -OutputPath "C:\Business\Clay Reports"
```

### Notification Settings
Edit: `automation\config\notification-settings.json`
- Email notifications
- Telegram alerts
- Desktop popups

## 📁 File Structure

```
automation/
├── clay-automation.ps1      # Main weekly script
├── clay-manual-run.ps1      # Run analysis now
├── health-check.ps1         # System diagnostics
├── install-clay-mcp.ps1     # Installation script
├── setup-scheduler.ps1      # Schedule management
├── config/                  # Configuration files
├── logs/                    # All system logs
└── backup/                  # Configuration backups

Desktop/
└── clay-reports/            # Your weekly reports appear here
    ├── Clay-Weekly-2025-08-22.md
    ├── Clay-Weekly-2025-08-29.md
    └── ...
```

## 🔐 Security & Privacy

- **API Key**: Stored securely in environment variables
- **Data**: All processing happens locally on your computer
- **Logs**: Contain no sensitive Clay data, only system status
- **Backups**: Configuration backed up before any changes

## 📈 Success Metrics

**Week 1-2:** System validation and initial reports  
**Week 3-4:** Fine-tuning signal filters and response quality  
**Month 2:** Full automation with optimized opportunity detection  
**Ongoing:** 5-10x efficiency improvement in lead identification

---

**Questions? Issues? Improvements?**  
Contact your developer anytime - this system is designed to save you hours every week! 🚀