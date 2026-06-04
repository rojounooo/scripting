# Notes 


## Bash 

### Error handling
- Instead of `set -e`, `echo` to print out a custom error message

### Ping 
- Sending ICMP packets to confirm a remote machine can be reached
- `-c` can be used to set the number of packets 

### DNS Lookup 
- Translates a Domain to an IP
- Use `nslookup` or `dig`

### Reverse DNS Lookup 
- Translates an IP to a Domain 
- Use `nslookup`

### Port Check 
- Uses built in linux port functions

### Traceroute 
- Shows path packets take 
- `traceroute` command 

### Active Connections 
- `ss ` stands for socket statistics 
- `ss -tuln` checks for TCP, UDP and listening ports

--- 

## PowerShell

### Error Handling 
- `ErrorAction Stop` 

### DNS Lookup 
- `Resolve-DnsName` for the target 

### Reverse DNS Lookup 
- `Resolve-DnsName` use `-Type PTR` for reverse 

### IP & Interfaces 
- `Get-NetIPAddress` for IP interfaces 
- `Get-NetAdapter` for MAC addresses
- `Get-NetRoute` for default gateway 
- `Select-Object` to extract columns 

### Port Check 
- `-InformationLevel Quiet` suppresses output to boolean 
- `Test-NetConnection` for port check 

## Python 

### Virtual Environments 
- Venvs can be used to avoid globally installing packages 
- Use a .gitignore to prevent /venv from being committed

