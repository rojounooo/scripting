param(
    [string]$Username
)

if (-not $Username) {
    Write-Host "Error: No username provided. Usage: .\query_ad_users .ps1 -Username <username>"
    exit 1
}

$server = "192.168.1.100"
$cred   = Get-Credential "LAB\Administrator"

try {
    Get-ADUser -Identity $Username -Server $server -Credential $cred -ErrorAction Stop
} catch [Microsoft.ActiveDirectory.Management.ADIdentityNotFoundException] {
    Write-Host "Error: User '$Username' not found on $server"
    exit 1
}