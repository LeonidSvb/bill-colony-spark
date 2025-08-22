# Clay MCP Setup Instructions

## 🔧 Technical Setup Guide

This document contains technical setup instructions for the Clay MCP automation system.

### Prerequisites
- Node.js installed (v16 or higher)
- NPM available globally
- Claude Code installed and working
- PowerShell execution policy allows scripts
- Clay account with API access

### Installation Steps

**1. Install Clay MCP Server**
```powershell
cd "C:\Users\79818\Desktop\Bill - Colony Spark\automation"
.\install-clay-mcp.ps1
```

**2. Configure Environment Variables**
```powershell
# Set Clay API key (replace with actual key)
[System.Environment]::SetEnvironmentVariable("CLAY_API_KEY", "clay_sk_your_key_here", [System.EnvironmentVariableTarget]::User)
```

**3. Test Installation**
```powershell
.\health-check.ps1
```

**4. Verify Claude Code Configuration**
- Clay MCP should appear in `.claude.json`
- Restart Claude Code after configuration
- Test MCP connection in Claude Code interface

**5. Setup Automation**
```powershell
.\setup-scheduler.ps1
```

**6. Run Initial Test**
```powershell
.\clay-manual-run.ps1 -Verbose
```

### Configuration Files

**`.claude.json`**
```json
{
  "mcpServers": {
    "clay-mcp": {
      "command": "node",
      "args": ["C:\\Users\\79818\\AppData\\Roaming\\npm\\node_modules\\@clayhq\\clay-mcp\\dist\\index.js"],
      "env": {
        "CLAY_API_KEY": "${CLAY_API_KEY}"
      }
    }
  }
}
```

**Rate Limits** (`automation/config/clay-rate-limits.json`)
- 30 requests per minute
- 5 requests per second minimum
- Built-in retry logic

### Validation Checklist

- [ ] Node.js and NPM working
- [ ] Clay MCP installed globally  
- [ ] API key set in environment
- [ ] `.claude.json` updated
- [ ] Claude Code restarted
- [ ] Health check passes
- [ ] Manual run succeeds
- [ ] Scheduled task created
- [ ] Output directory accessible
- [ ] Logs writing correctly

### Troubleshooting Common Issues

**NPX Installation Fails**
- Use global NPM installation instead
- Check Node.js permissions
- Verify PATH includes npm global directory

**MCP Server Not Found**
- Check exact path in `.claude.json`
- Verify global installation location
- Use absolute paths instead of relative

**API Key Issues**
- Verify key format (starts with `clay_sk_`)
- Check environment variable is set correctly
- Test API access independently

**Scheduled Task Fails**
- Check PowerShell execution policy
- Verify script paths are absolute
- Test manual execution first
- Check user permissions

### Development Notes

**Mock Data Mode**
- Edit `automation/test-config.json`
- Set `test_mode.use_mock_data: true`
- Use for testing without API calls

**Custom Output Templates**
- Modify report generation in `clay-manual-run.ps1`
- Add custom sections as needed
- Follow existing markdown format

**Rate Limiting**
- Configured for Clay's 30 req/min limit
- Built-in delays and retry logic
- Monitor `automation/logs/clay-api.log`

### Monitoring

**Log Files:**
- `automation/logs/automation.log` - Main system log
- `automation/logs/errors.log` - Error-only log  
- `automation/logs/health-check.log` - Diagnostic log
- `automation/logs/scheduler-setup.log` - Task setup log

**Health Monitoring:**
```powershell
# Quick status check
.\health-check.ps1

# View recent errors  
Get-Content automation\logs\errors.log -Tail 20

# Check scheduled task
Get-ScheduledTask -TaskName "Clay Weekly Analysis"
```

### Security Considerations

- API key stored in user environment variables only
- No API keys in configuration files or logs
- All processing happens locally
- Configuration backup before changes
- Logs contain no sensitive Clay data

### Performance Optimization

- Rate limiting prevents API throttling
- Batch processing where possible
- Error retry with exponential backoff
- Minimal API calls during testing
- Efficient report generation

---

**For Support:** Contact developer with output from `health-check.ps1` and relevant log excerpts.