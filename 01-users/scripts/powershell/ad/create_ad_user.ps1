param(
    [string]$name,
    [string]$sam,
    [string]$givenName,
    [string]$familyName
)

if (-not $name) {
    Write-Host "Error: No name provided. Usage: .\create_ad_user.ps1 -name <name>"
    exit 1
}

$server   = "192.168.1.100"
$cred     = Get-Credential "LAB\Administrator"
$password = -join ((33..126) | Get-Random -Count 12 | ForEach-Object { [char]$_ })

try {
    New-ADUser -Name $name `
               -SamAccountName $sam `
               -UserPrincipalName "$givenName.$familyName@lab.local" `
               -GivenName $givenName `
               -Surname $familyName `
               -AccountPassword (ConvertTo-SecureString $password -AsPlainText -Force) `
               -ChangePasswordAtLogon $true `
               -Enabled $true `
               -Server $server `
               -Credential $cred 

    Write-Host "User '$name' created successfully"
    Write-Host "Temporary password: $password"
    Write-Host "User will be prompted to change password at first login"
} catch {
    Write-Host "Error: $_"
    exit 1
}