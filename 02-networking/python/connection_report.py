import platform
import subprocess
import psutil
import socket 

# Ping 
print("=== Ping ===")
pingTarget = input("Ping Target: ")
print(f"Pinging {pingTarget}...")

try: 
    if platform.system().lower() != "windows":
        command = ["ping", "-c 4", pingTarget]
        
    else: 
        command = ["ping", pingTarget]

    subprocess.run(command, check=True, capture_output=True, text=True)
    
except subprocess.CalledProcessError as e:
    print(f"Ping failed for {pingTarget}")



# DNS Lookup 
print("")
print("=== DNS Lookup ===")
host = input("Target Hostname: ")
reverseTarget = input("Target IP: ")
print(f"Running DNS lookup for {host}")
try:
    ip_address = socket.gethostbyname(host)
    print(ip_address)
except:
    print(f"DNS lookup failed for {host}")

print(f"Running reverse lookup for {reverseTarget}")
try: 
    hostname = socket.gethostbyaddr(reverseTarget)
    print(hostname)
except: 
    print(f"Reverse lookup failed for {reverseTarget}")

# IP & Interface Info
