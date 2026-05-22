$server = "192.168.1.100"
$cred   = Get-Credential "LAB\Administrator"

try {
    Get-ADUser -Filter * -Server $server -Credential $cred
}
catch {
    Write-Host "Error: $_"
    exit 1
}