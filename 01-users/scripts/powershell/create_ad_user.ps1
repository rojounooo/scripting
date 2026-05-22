param(
    [string]$name,
    [string]$sam,
    [string]$givenName,
    [string]$familyName
)

if (-not $name) {
    Write-Host "Error: No name provided. Usage: .\add_ad_user.ps1 -name <name>"
    exit 1
}

$server = "192.168.1.100"
$cred   = Get-Credential "LAB\Administrator"

try {
    New-ADUser -Name $name `
               -SamAccountName $sam `
               -UserPrincipalName "$givenName.$familyName@lab.local" `
               -GivenName $givenName `
               -Surname $familyName `
               -AccountPassword (ConvertTo-SecureString "Password123!" -AsPlainText -Force) `
               -Enabled $true `
               -Server $server `
               -Credential $cred `
               -ErrorAction Stop

    Write-Host "User '$name' created successfully"
} catch {
    Write-Host "Error: $_"
    exit 1
}