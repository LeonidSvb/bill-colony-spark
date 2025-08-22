# Clay MCP Health Check Script
# Verifies all components are working properly

$logFile = "C:\Users\79818\Desktop\Bill - Colony Spark\automation\logs\health-check.log"
$date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

function Write-Log {
    param($Message, $Level = "INFO")
    $logEntry = "[$date] [$Level] $Message"
    $logEntry | Out-File -Append $logFile
    Write-Host $logEntry -ForegroundColor $(if ($Level -eq "ERROR") {"Red"} elseif ($Level -eq "WARN") {"Yellow"} else {"Green"})
}

function Test-Component {
    param($Name, $TestScript, $Required = $true)
    Write-Host "`n=== Testing $Name ===" -ForegroundColor Cyan
    try {
        $result = & $TestScript
        if ($result) {
            Write-Log "$Name: PASS" -Level "INFO"
            return $true
        } else {
            Write-Log "$Name: FAIL" -Level $(if ($Required) {"ERROR"} else {"WARN"})
            return $false
        }
    } catch {
        Write-Log "$Name: ERROR - $($_.Exception.Message)" -Level "ERROR"
        return $false
    }
}

Write-Log "Starting Clay MCP health check..."
$allPassed = $true

# Test 1: Node.js
$allPassed = (Test-Component "Node.js" {
    $version = node --version 2>$null
    if ($version) {
        Write-Log "Node.js version: $version"
        return $true
    }
    return $false
}) -and $allPassed

# Test 2: NPM
$allPassed = (Test-Component "NPM" {
    $version = npm --version 2>$null
    if ($version) {
        Write-Log "NPM version: $version"
        return $true
    }
    return $false
}) -and $allPassed

# Test 3: Clay MCP Installation
$allPassed = (Test-Component "Clay MCP Installation" {
    $installPath = "C:\Users\$env:USERNAME\AppData\Roaming\npm\node_modules\@clayhq\clay-mcp\dist\index.js"
    if (Test-Path $installPath) {
        Write-Log "Clay MCP found at: $installPath"
        return $true
    } else {
        Write-Log "Clay MCP not found at expected path: $installPath"
        return $false
    }
}) -and $allPassed

# Test 4: Claude Code Installation
$allPassed = (Test-Component "Claude Code" {
    $claudeCodePath = "C:\Users\$env:USERNAME\AppData\Local\Programs\Claude Code\Claude Code.exe"
    if (Test-Path $claudeCodePath) {
        Write-Log "Claude Code found at: $claudeCodePath"
        return $true
    } else {
        Write-Log "Claude Code not found at expected path"
        return $false
    }
}) -and $allPassed

# Test 5: Clay API Key
$allPassed = (Test-Component "Clay API Key" {
    $apiKey = $env:CLAY_API_KEY
    if ($apiKey -and $apiKey.Length -gt 10) {
        Write-Log "Clay API key is set (length: $($apiKey.Length))"
        return $true
    } else {
        Write-Log "Clay API key not set or too short"
        return $false
    }
} -Required $false) -and $allPassed

# Test 6: Configuration Files
$allPassed = (Test-Component "Claude Configuration" {
    $configPath = "C:\Users\79818\Desktop\Bill - Colony Spark\.claude.json"
    if (Test-Path $configPath) {
        $config = Get-Content $configPath | ConvertFrom-Json
        if ($config.mcpServers.'clay-mcp') {
            Write-Log "Clay MCP configuration found in .claude.json"
            return $true
        } else {
            Write-Log "Clay MCP not configured in .claude.json"
            return $false
        }
    } else {
        Write-Log ".claude.json not found"
        return $false
    }
}) -and $allPassed

# Test 7: Output Directories
Test-Component "Output Directories" {
    $dirs = @(
        "C:\Users\79818\Desktop\Bill - Colony Spark\automation\logs",
        "C:\Users\79818\Desktop\clay-reports"
    )
    $allDirsExist = $true
    foreach ($dir in $dirs) {
        if (-not (Test-Path $dir)) {
            New-Item -ItemType Directory -Path $dir -Force | Out-Null
            Write-Log "Created directory: $dir"
        } else {
            Write-Log "Directory exists: $dir"
        }
    }
    return $true
} -Required $false | Out-Null

# Test 8: Scheduled Task (optional)
Test-Component "Scheduled Task" {
    $taskName = "Clay Weekly Analysis"
    $task = Get-ScheduledTask -TaskName $taskName -ErrorAction SilentlyContinue
    if ($task) {
        Write-Log "Scheduled task '$taskName' exists with state: $($task.State)"
        return $true
    } else {
        Write-Log "Scheduled task '$taskName' not found"
        return $false
    }
} -Required $false | Out-Null

# Summary
Write-Host "`n" + "="*50 -ForegroundColor Cyan
if ($allPassed) {
    Write-Log "HEALTH CHECK PASSED - System ready for Clay automation" -Level "INFO"
    Write-Host "✅ All critical components are working!" -ForegroundColor Green
} else {
    Write-Log "HEALTH CHECK FAILED - Some components need attention" -Level "ERROR"
    Write-Host "❌ Some components failed. Check log: $logFile" -ForegroundColor Red
}

Write-Host "`nNext steps:" -ForegroundColor Yellow
Write-Host "1. If API key test failed: Set CLAY_API_KEY environment variable"
Write-Host "2. Run: .\install-clay-mcp.ps1 (if installation failed)"
Write-Host "3. Test manually: .\clay-manual-run.ps1"
Write-Host "4. Set up automation: .\setup-scheduler.ps1"
Write-Host "`nFull log: $logFile" -ForegroundColor Gray