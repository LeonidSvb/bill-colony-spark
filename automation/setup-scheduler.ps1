# Windows Task Scheduler Setup for Clay Automation
# Creates scheduled task for weekly Clay analysis

param(
    [string]$ScheduleDay = "Monday",
    [string]$ScheduleTime = "09:00",
    [switch]$Remove
)

$taskName = "Clay Weekly Analysis"
$scriptPath = "C:\Users\79818\Desktop\Bill - Colony Spark\automation\clay-automation.ps1"
$logFile = "C:\Users\79818\Desktop\Bill - Colony Spark\automation\logs\scheduler-setup.log"
$date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

function Write-Log {
    param($Message)
    "[$date] $Message" | Out-File -Append $logFile
    Write-Host "[$date] $Message"
}

if ($Remove) {
    Write-Host "🗑️ Removing scheduled task..." -ForegroundColor Yellow
    try {
        Unregister-ScheduledTask -TaskName $taskName -Confirm:$false -ErrorAction SilentlyContinue
        Write-Log "Scheduled task '$taskName' removed successfully"
        Write-Host "✅ Task removed!" -ForegroundColor Green
    } catch {
        Write-Log "Failed to remove task: $($_.Exception.Message)"
        Write-Host "❌ Failed to remove task" -ForegroundColor Red
    }
    exit
}

Write-Host "⏰ Setting up Clay Weekly Automation" -ForegroundColor Cyan
Write-Host "====================================" -ForegroundColor Cyan

Write-Log "Setting up scheduled task for Clay automation..."

try {
    # Check if PowerShell script exists
    if (-not (Test-Path $scriptPath)) {
        throw "PowerShell script not found: $scriptPath"
    }

    # Remove existing task if it exists
    $existingTask = Get-ScheduledTask -TaskName $taskName -ErrorAction SilentlyContinue
    if ($existingTask) {
        Write-Log "Removing existing task..."
        Unregister-ScheduledTask -TaskName $taskName -Confirm:$false
    }

    # Create new scheduled task
    Write-Log "Creating scheduled task: $taskName"
    Write-Log "Schedule: Every $ScheduleDay at $ScheduleTime"

    # Task action - run PowerShell script
    $action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-ExecutionPolicy Bypass -File `"$scriptPath`""

    # Task trigger - weekly on specified day and time
    $trigger = New-ScheduledTaskTrigger -Weekly -DaysOfWeek $ScheduleDay -At $ScheduleTime

    # Task settings
    $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -StartWhenAvailable

    # Task principal - run as current user
    $principal = New-ScheduledTaskPrincipal -UserId $env:USERNAME -RunLevel Limited

    # Register the task
    Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $trigger -Settings $settings -Principal $principal -Description "Weekly Clay signal analysis automation"

    Write-Log "Scheduled task created successfully!"
    
    # Verify task creation
    $task = Get-ScheduledTask -TaskName $taskName
    Write-Log "Task state: $($task.State)"
    Write-Log "Next run time: $($task.TaskScheduler.GetTask($taskName).NextRunTime)"

    Write-Host "✅ Scheduled task setup complete!" -ForegroundColor Green
    Write-Host "📅 Next run: Every $ScheduleDay at $ScheduleTime" -ForegroundColor Green
    Write-Host "📋 Task name: $taskName" -ForegroundColor Cyan

    Write-Host "`n🛠️ Management commands:" -ForegroundColor Yellow
    Write-Host "- View task: Get-ScheduledTask -TaskName '$taskName'"
    Write-Host "- Test run: Start-ScheduledTask -TaskName '$taskName'"
    Write-Host "- Remove task: .\setup-scheduler.ps1 -Remove"
    Write-Host "- View logs: Get-Content '$logFile'"

} catch {
    $errorMessage = "Failed to setup scheduled task: $($_.Exception.Message)"
    Write-Log $errorMessage
    Write-Host "❌ $errorMessage" -ForegroundColor Red
    Write-Host "📋 Check log: $logFile" -ForegroundColor Yellow
    
    Write-Host "`n🔧 Troubleshooting:" -ForegroundColor Yellow
    Write-Host "1. Run PowerShell as Administrator"
    Write-Host "2. Check PowerShell execution policy: Get-ExecutionPolicy"
    Write-Host "3. If needed: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser"
    exit 1
}