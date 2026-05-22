# Parse a string parameter
param(
    [string]$Username
)

if (-not $Username) {
    Write-Host "Error: No username provided. Usage: .\query-user.ps1 -Username <username>"
    exit 1
}

try {
    Get-LocalUser -Identity $Username
}
catch {
    Write-Host "Error: User '$Username' not found on $server"
    exit 1
}