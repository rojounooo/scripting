# Ping
Write-Host "=== Ping ==="
$pingTarget = Read-Host "Ping target"
Write-Host "Pinging '$pingTarget'..."
try {
    Test-Connection $pingTarget -Count 4 -ErrorAction Stop
} catch {
    Write-Host "Ping failed for '$pingTarget'"
}

# DNS Lookup
Write-Host ""
Write-Host "=== DNS Lookup ==="
$targetHost = Read-Host "Target hostname"
$targetIP = Read-Host "Target IP"
Write-Host "Running DNS lookup for '$targetHost'"
try {
    Resolve-DnsName $targetHost -ErrorAction Stop
} catch {
    Write-Host "DNS lookup failed for '$targetHost'"
}
Write-Host "Running reverse lookup for '$targetIP'"
try {
    Resolve-DnsName -Name $targetIP -Type PTR -ErrorAction Stop
} catch {
    Write-Host "Reverse lookup failed for '$targetIP'"
}

# IP & Interface Info
Write-Host ""
Write-Host "=== IP & Interface Info ==="
Write-Host "Interfaces:"
Get-NetIPAddress | Select-Object InterfaceAlias, IPAddress, PrefixLength
Write-Host "MAC Addresses:"
Get-NetAdapter | Select-Object Name, MacAddress, Status
Write-Host "Default Gateway:"
Get-NetRoute -DestinationPrefix "0.0.0.0/0" | Select-Object NextHop

# Port Check
Write-Host ""
Write-Host "=== Port Check ==="
$targetPortCheck = Read-Host "Target"
$targetPort = Read-Host "Port"
try {
    Test-NetConnection -ComputerName $targetPortCheck -Port $targetPort -InformationLevel Quiet -ErrorAction Stop
    Write-Host "Port '$targetPort' is open on '$targetPortCheck'"
} catch {
    Write-Host "Port '$targetPort' is closed on '$targetPortCheck'"
}

# Traceroute
Write-Host ""
Write-Host "=== Traceroute ==="
$trTarget = Read-Host "Target"
try {
    Test-NetConnection -ComputerName $trTarget -TraceRoute -ErrorAction Stop
} catch {
    Write-Host "Traceroute failed for '$trTarget'"
}

# Active Connections
Write-Host ""
Write-Host "=== Active Connections ==="
Get-NetTCPConnection | Select-Object LocalAddress, LocalPort, RemoteAddress, RemotePort, State