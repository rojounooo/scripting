param(
    [string]$csvPath
)

if (-not $csvPath) {
    Write-Host "Error: No CSV path provided. Usage: .\bulk_create_ad_users.ps1 -csvPath <csv_file_path>"
    exit 1
}

$server = "192.168.1.100"
$cred   = Get-Credential "LAB\Administrator"

try {
    $csvContent = Import-Csv -Path $csvPath
} catch {
    Write-Host "Error reading CSV: $_"
    exit 1
}

foreach ($row in $csvContent) {
    try {
        New-ADUser -Name $row.Name `
                   -SamAccountName $row.SamAccountName `
                   -UserPrincipalName "$($row.SamAccountName)@lab.local" `
                   -GivenName $row.GivenName `
                   -Surname $row.Surname `
                   -AccountPassword (ConvertTo-SecureString $row.Password -AsPlainText -Force) `
                   -Enabled $true `
                   -Server $server `
                   -Credential $cred `

        Write-Host "Created: $($row.SamAccountName)"
    } catch {
        Write-Host "Failed to create $($row.SamAccountName): $_"
    }
}