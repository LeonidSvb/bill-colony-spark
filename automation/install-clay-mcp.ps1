# Clay MCP Installation Script
# Installs Clay MCP server globally and configures paths

$logFile = "C:\Users\79818\Desktop\Bill - Colony Spark\automation\logs\install.log"
$date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

function Write-Log {
    param($Message)
    "[$date] $Message" | Out-File -Append $logFile
    Write-Host "[$date] $Message"
}

Write-Log "Starting Clay MCP installation..."

try {
    # Check if Node.js is available
    $nodeVersion = node --version 2>$null
    if (-not $nodeVersion) {
        throw "Node.js not found. Please install Node.js first."
    }
    Write-Log "Node.js found: $nodeVersion"

    # Install Clay MCP globally
    Write-Log "Installing @clayhq/clay-mcp globally..."
    npm install -g @clayhq/clay-mcp 2>&1 | Out-File -Append $logFile
    
    if ($LASTEXITCODE -ne 0) {
        throw "NPM installation failed"
    }

    # Find installation path
    $mcpPath = npm list -g @clayhq/clay-mcp --depth=0 2>&1
    Write-Log "Clay MCP installed at: $mcpPath"

    # Verify installation
    $installPath = "C:\Users\$env:USERNAME\AppData\Roaming\npm\node_modules\@clayhq\clay-mcp\dist\index.js"
    if (Test-Path $installPath) {
        Write-Log "Installation verified at: $installPath"
    } else {
        Write-Log "Warning: Could not verify installation at expected path"
    }

    Write-Log "Clay MCP installation completed successfully!"
    Write-Log "Next steps:"
    Write-Log "1. Set CLAY_API_KEY environment variable"
    Write-Log "2. Restart Claude Code"
    Write-Log "3. Test connection with clay-test.ps1"

} catch {
    Write-Log "ERROR: $($_.Exception.Message)"
    Write-Host "Installation failed. Check log: $logFile" -ForegroundColor Red
    exit 1
}