#!/bin/bash

# Ping
echo "=== Ping ==="
read -p "Ping target: " pingTarget
echo "Pinging '$pingTarget'..."
ping -c 4 $pingTarget || echo "Ping failed for '$pingTarget'"

# DNS Lookup
echo ""
echo "=== DNS Lookup ==="
read -p "Target hostname: " targetHost
read -p "Target IP address: " targetIP
echo "Running DNS lookup for '$targetHost'"
nslookup $targetHost || echo "DNS lookup failed for '$targetHost'"
echo "Running reverse lookup for '$targetIP'"
nslookup $targetIP || echo "Reverse lookup failed for '$targetIP'"

# IP & Interface Info
echo ""
echo "=== IP & Interface Info ==="
echo "Interfaces:"
ip -br a | awk '{print $1, $3, $2}'
echo "MAC Addresses:"
ip -br link | awk '{print $1, $3}'
echo "Default Gateway:"
ip route | awk '/default/ {print $3}'

# Port Check
echo ""
echo "=== Port Check ==="
read -p "Port check target: " targetPortCheck
read -p "Port: " targetPort
bash -c "echo >/dev/tcp/$targetPortCheck/$targetPort" 2>/dev/null && echo "Port $targetPort is open on $targetPortCheck" || echo "Port $targetPort is closed on $targetPortCheck"

# Traceroute
echo ""
echo "=== Traceroute ==="
read -p "Traceroute target: " trTarget
traceroute $trTarget || echo "Traceroute failed for '$trTarget'"

# Active Connections
echo ""
echo "=== Active Connections ==="
ss -tuln