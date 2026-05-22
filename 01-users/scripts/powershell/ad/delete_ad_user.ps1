param(
    [string]$identity
)

if (-not $identity) {
    Write-Host "Error: No identity provided. Usage: .\delete_ad_user.ps1 -identity <username>"
    exit 1
}

$server = "192.168.1.100"
$cred   = Get-Credential "LAB\Administrator"

try {
    Remove-ADUser -Identity $identity -Server $server -Credential $cred
} catch {
    Write-Host "Error: $_"
    exit 1
}