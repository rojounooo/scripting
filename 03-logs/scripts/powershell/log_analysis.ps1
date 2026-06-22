param(
    [string]$logpath
)

if (-not $logpath){
    Write-Host "Error: No log path provided. Usage: .\log_analysis.ps1 -logPath <log file path>"
    exit 1
}

Write-Host "===  Log Contents ==="

# Check file exists
if (Test-Path -Path $logpath -PathType Leaf) {
    Write-Host "File found"
} else {
    Write-Host "File doesn't exist"
}

# Read log contents 
$no_of_lines = (Get-Content $logpath | Measure-Object -Line.Lines)
Write-Host ("Total lines: $no_of_lines")

if ($no_of_lines -le 20) {
    Get-Content -Path $logpath
}
else {
    Write-Host "Showing latest entries: "
    Get-Content -Path $logpath -Head
}


