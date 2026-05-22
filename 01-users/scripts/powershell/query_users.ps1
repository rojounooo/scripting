# Parse a string parameter
param(
    [string]$Username
)

Write-Host "Checking if user exists using Get-LocalHost"
# Get-LocalUser 
Get-LocalUser -Name $Username