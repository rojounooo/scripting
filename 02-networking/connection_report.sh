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
echo "Network interfaces:"
for i in $(ip -br a | awk '{print $1}'); do 
    echo $i 
done
    
# Port Check

read -p "Port Check Target: " targetPortCheck 
read -p "Port Check Port: " targetPort 

nc -zv "$targetPortCheck" "$targetPort"


