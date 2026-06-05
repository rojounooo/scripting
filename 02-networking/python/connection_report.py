import platform
import subprocess
import psutil
import socket

# Get Platform 
def get_platform():
    return platform.system().lower()

# Ping
print("=== Ping ===")
pingTarget = input("Ping Target: ")
print(f"Pinging {pingTarget}...")

try:
    if get_platform() != "windows":
        command = ["ping", "-c", "4", pingTarget]
    else:
        command = ["ping", pingTarget]

    subprocess.run(command, check=True)

except subprocess.CalledProcessError:
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
print("")
print("=== IP & Interface Info ===")

interfaces = psutil.net_if_addrs()
stats = psutil.net_if_stats()

for interface, addresses in interfaces.items():
    state = "UP" if stats[interface].isup else "DOWN"
    print(f"\n{interface} ({state})")
    for addr in addresses:
        if str(addr.family) == "AddressFamily.AF_INET":
            print(f"  IP:     {addr.address}")
            print(f"  Subnet: {addr.netmask}")
        if str(addr.family) == "AddressFamily.AF_PACKET":
            print(f"  MAC:    {addr.address}")

# Port Check
print("")
print("=== Port Check ===")
targetPortCheck = input("Target: ")
targetPort = int(input("Port: "))

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.settimeout(3)
result = sock.connect_ex((targetPortCheck, targetPort))
sock.close()

if result == 0:
    print(f"Port {targetPort} is open on {targetPortCheck}")
else:
    print(f"Port {targetPort} is closed on {targetPortCheck}")

# Traceroute
print("")
print("=== Traceroute ===")
trTarget = input("Target: ")

try:
    if get_platform() != "windows":
        command = ["traceroute", trTarget]
    else:
        command = ["tracert", trTarget]

    subprocess.run(command, check=True)

except subprocess.CalledProcessError:
    print(f"Traceroute failed for {trTarget}")

# Active Connections
print("")
print("=== Active Connections ===")

connections = psutil.net_connections()
for conn in connections:
    print(f"{conn.laddr} -> {conn.raddr} [{conn.status}]")