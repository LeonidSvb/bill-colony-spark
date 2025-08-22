# Create Desktop Shortcuts for Clay Automation
# Creates user-friendly shortcuts on Bill's desktop

$desktop = [Environment]::GetFolderPath("Desktop")
$automationPath = "C:\Users\79818\Desktop\Bill - Colony Spark\automation"

function Create-Shortcut {
    param(
        [string]$ShortcutName,
        [string]$TargetPath,
        [string]$Arguments = "",
        [string]$Description = "",
        [string]$IconPath = "powershell.exe"
    )
    
    $shortcutPath = Join-Path $desktop "$ShortcutName.lnk"
    $shell = New-Object -ComObject WScript.Shell
    $shortcut = $shell.CreateShortcut($shortcutPath)
    $shortcut.TargetPath = "powershell.exe"
    $shortcut.Arguments = "-ExecutionPolicy Bypass -WindowStyle Normal -File `"$TargetPath`" $Arguments"
    $shortcut.Description = $Description
    $shortcut.WorkingDirectory = $automationPath
    $shortcut.IconLocation = $IconPath
    $shortcut.Save()
    
    Write-Host "Created: $ShortcutName" -ForegroundColor Green
}

Write-Host "🚀 Creating Clay Automation Desktop Shortcuts" -ForegroundColor Cyan
Write-Host "=============================================" -ForegroundColor Cyan

# Main user shortcuts
Create-Shortcut -ShortcutName "Get Clay Report Now" `
                -TargetPath "$automationPath\clay-manual-run.ps1" `
                -Arguments "-Verbose" `
                -Description "Generate Clay signal analysis report immediately"

Create-Shortcut -ShortcutName "Check Clay System" `
                -TargetPath "$automationPath\health-check.ps1" `
                -Description "Verify Clay automation system is working properly"

# Advanced shortcuts (for troubleshooting)
Create-Shortcut -ShortcutName "Clay Setup Wizard" `
                -TargetPath "$automationPath\install-clay-mcp.ps1" `
                -Description "Install or reinstall Clay MCP server"

Create-Shortcut -ShortcutName "Clay Schedule Setup" `
                -TargetPath "$automationPath\setup-scheduler.ps1" `
                -Description "Configure weekly automation schedule"

# Create clay-reports directory if it doesn't exist
$reportsDir = "$desktop\clay-reports"
if (-not (Test-Path $reportsDir)) {
    New-Item -ItemType Directory -Path $reportsDir -Force | Out-Null
    Write-Host "Created reports directory: clay-reports" -ForegroundColor Yellow
}

# Create a shortcut to the reports folder
$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut("$desktop\Clay Reports Folder.lnk")
$shortcut.TargetPath = $reportsDir
$shortcut.Description = "Open folder containing Clay weekly reports"
$shortcut.IconLocation = "shell32.dll,3"  # Folder icon
$shortcut.Save()
Write-Host "Created: Clay Reports Folder" -ForegroundColor Green

Write-Host ""
Write-Host "Desktop shortcuts created successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "For Bill to use:" -ForegroundColor Cyan
Write-Host "- Get Clay Report Now - Double-click for instant analysis"
Write-Host "- Check Clay System - Verify everything is working"
Write-Host "- Clay Reports Folder - View all your weekly reports"
Write-Host ""
Write-Host "For troubleshooting:" -ForegroundColor Yellow  
Write-Host "- Clay Setup Wizard - Reinstall if needed"
Write-Host "- Clay Schedule Setup - Change automation timing"
Write-Host ""
Write-Host "System is ready for use!" -ForegroundColor Green