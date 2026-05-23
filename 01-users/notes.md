# Notes:

## Bash

### /dev/null 
- A special file that discards all content written to it 
- `&>/dev/null` is used when you only care if a command succeeds or fails 

### getent 
- Short for get entries 
- Retrieves database entries managed by Name Service Switch (NSS) 
- Useful when identity services are used 

### id 
- Used to display user information 
- Provides User ID (UID), Primary Group ID (GID) and additional groups 

### openssl 
- Can be used to create cryptographically strong string

### chage 
- Can be used to set expiry dates for passwords 

# -s /bin/bash 
- Explicitly set user shell 


## Python 

## PowerShell 

### Get-LocalUser 
- Checks if a local user exists for the username 
- Case insensitive 

### Security Identifier (SID) 
- Unique string assigned by windows to identify users, groups, computers etc 
- Unique within scope (local or domain) 
- Never reused even if account is deleted and recreated 

### Get-ADUSer 
- Checks if ADUser exists

### -Identity 
- Uses the SamName to identify users 

### $Server 
- Sets the AD DC static IP to a variable to allow connections without needing to domain join a machine

### Get-Credential
- Used to connect to the DC using credentials 

### Import-Csv 
- Used to read from a CSV file 

### -join 
- Can be used to create random strings of characters 
