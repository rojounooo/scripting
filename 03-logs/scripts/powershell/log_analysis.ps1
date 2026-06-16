param(
    [string]$logpath
)

if (-not $logpath){
    Write-Host "Error: No log path provided. Usage: .\log_analysis.ps1 -logPath <log file path>"
    exit 1
}

if (Test-Path -Path $logpath -PathType Leaf) {
    Write-Host "File found"
} else {
    Write-Host "File doesn't exist"
}

