#!/bin/bash 

set -e 

# Ping 

read -p "Ping target: " pingTarget

echo "Pinging '$pingTarget'..."
ping -c 4 $pingTarget

# DNS Lookup
read -p "Target Hostname: " targetHost 
read -p "Target IP address: " targetIP

echo "Running DNS lookup for '$targetHost'" 
nslookup $targetHost

echo "Running reverse lookup for '$targetIP'"
nslookup $targetIP

# IP & Interface Info 
echo "Interfaces:"
ip -br a | awk '{print $1, $3, $2}'

echo "MAC Addresses:"
ip -br link | awk '{print $1, $3}'

echo "Default Gateway:"
ip route | awk '/default/ {print $3}'
    
# Port Check

read -p "Port Check Target: " targetPortCheck 
read -p "Port Check Port: " targetPort 

nc -zv "$targetPortCheck" "$targetPort"

# Traceroute 

echo "Traceroute target: " $trTarget
traceroute $trTarget

# Active Connections 
ss -tuln 