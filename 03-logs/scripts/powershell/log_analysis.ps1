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

# Filter by keyword
Write-Host ""
Write-Host "=== Keyword Filter ==="
$keyword = Read-Host "Keyword: " 

try {
    Select-String -Path $logpath -Pattern $keyword 
}
catch {
    Write-Host "No matches found for $keyword"
}

# Count occurrences
Write-Host ""
Write-Host "=== Occurrence Count ==="
$count = ((Select-String -Path $logpath -Pattern $keyword).Count)
Write-Host "Occurrences of '$keyword': '$count'"

# Filter by date
Write-Host ""
Write-Host "=== Filter by Date ==="
$date_filter = Read-Host "Date (e.g. Jun 13): " 
try {
    Select-String -Path $logpath -Pattern $date_filter 
}
catch {
    Write-Host "No entries found for $date_filter" 
}

# Summarise
Write-Output ""
Write-Output "=== Summary (Errors, Warnings, Critical) ==="

$matches_found = Select-String -Path $log_file -Pattern "error|warning|critical|failed" -CaseSensitive:$false

if ($matches_found) {
    $matches_found
} else {
    Write-Output "No errors or warnings found"
}
