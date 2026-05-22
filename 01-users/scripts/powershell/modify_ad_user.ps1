param(
    [string]$identity,
    [string]$givenName
)
$server = "192.168.1.100"
$cred   = Get-Credential "LAB\Administrator"

if 

try {
    Set-ADUser -Identity $identity -GivenName $givenName -Server $server -Credential $cred
}
catch {
    Write-Host "Error $_"
    exit 1
}