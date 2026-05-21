# Fundamentals

> **Note** All bash scripts should start with the shebang at the top. #!/bin/bash

## Variables & Data Types
Variables are containers for storing data values.
Data types are used to define the type of data that can be stored.
Common Data Types:
- Strings: Text
- Integers: Whole numbers
- Floating-point numbers: Decimal numbers
- Booleans: True or False values
- Null/None: Represents the absence of a value

### Variable Assignment

```bash
# Bash
# One full string, no spaces
# Bash has no native boolean or null type 
# varName=value

stringVar="Hello, World!"
integerVar=123
floatVar=123.45    
```

```python
# Python
# Can include spaces
# Spaces are used for readability

stringVar = "Hello, World!"
integerVar = 123
floatVar = 123.45
booleanVar = True
nullVar = None
```

```powershell
# PowerShell
# $varName = value
# Boolean values are $true/$false
# Variables must always begin with a $

$stringVar = "Hello, World!"
$integerVar = 123
$floatVar = 123.45
$booleanVar = $true
$nullVar = $null
```

---

## User Input & Output
User Input is the data entered by the user into a program.
User Output is the data displayed by the program to the user.

### Examples

```bash
# Bash
# Input: read -p "<String>" varName
# Output: echo $varName

read -p "Enter your name: " name
echo "$name"
```

```python
# Python
# Input: varName = input("<String>")
# Output: print(varName)

name = input("Enter your name: ")
print(name)
```

```powershell
# PowerShell
# Input: $varName = Read-Host "<String>"
# Output: Write-Host $varName

$name = Read-Host "Enter your name"
Write-Host $name
```

---

## Type Annotation
Type annotation is the process of specifying the data type of a variable.

### Examples

```bash
# Bash
# declare -option varName=value
# Note: Bash uses attributes via 'declare' instead of traditional data types.

declare -i integerVar=123      # -i enforces integer attribute
declare -r readOnlyVar="hello" # -r makes variable read-only
```

```python
# Python
# varName: type = value
# Note: Type hints are optional and not strictly enforced at runtime.

str = "Hello, World!" # String
int = 123 # Int
float = 123.45 # Float
bool = True # Boolean
None = None # Null
```

```powershell
# PowerShell
# [type]$varName = value
# Note: Enforcing the type strictly locks the variable to that data type.

[string]$stringVar = "Hello, World!"
[int]$integerVar = 123
[float]$floatVar = 123.45
[bool]$booleanVar = $true
$nullVar = $null
```

---

## Type Casting
Type casting is the process of converting a value from one data type to another.

### Examples

```bash
# Bash
# varName=$(( stringVar + integer ))
# Note: Bash relies on implicit casting or arithmetic evaluation blocks.

numStr="42"
result=$(( numStr + 8 ))  
echo "$result"           

```python
# Python
# varName = newType(oldVar)
# Note: Built-in type functions perform the data conversion.

stringVar = "123"
integerVar = int(stringVar)     
floatVar = float(integerVar)    
backToString = str(integerVar)  
booleanVar = bool(0)          
```

```powershell
# PowerShell
# $varName = [newType]$oldVar
# Note: Use target types encased in brackets to shift data types.

$stringVar = "123"
$integerVar = [int]$stringVar       
$floatVar = [float]$integerVar      
$backToString = [string]$integerVar 
$booleanVar = [bool]0          
```
---

## Conditionals
Conditionals are used to make decisions in a program.

### Examples

```bash
# Bash
# if [ condition ]; then
#   decision
# elif [ condition ]; then
#   decision
# else
#   decision
# fi

if [ "$var" -eq 10 ]; then
  echo "var is 10"
elif [ "$var" -gt 10 ]; then
  echo "var is greater than 10"
else
  echo "var is less than 10"
fi
```

```python
# Python
# if condition:
#   decision
# elif condition:
#   decision
# else:
#   decision

if var == 10:
  print("var is 10")
elif var > 10:
  print("var is greater than 10")
else:
  print("var is less than 10")
```

```powershell
# PowerShell
# if (condition) {
#   decision
# } elseif (condition) {
#   decision
# } else {
#   decision
# }

if ($var -eq 10) {
  Write-Host "var is 10"
} elseif ($var -gt 10) {
  Write-Host "var is greater than 10"
} else {
  Write-Host "var is less than 10"
}
```

> **Note:** Bash uses `-eq`, `-gt`, `-lt` for numeric comparisons inside `[ ]`. For strings use `=` and `!=`. PowerShell also uses `-eq`, `-gt`, `-lt` rather than `==` and `>`.
> **Note:** Python uses `<`, `>` `<=` and `>=" for numeric comparisons. `==` for identical. `!=` for not equal to. 
---

## Loops
Loops are used to repeat a block of code multiple times.
For loops iterate a set number of times or over a collection.
While loops iterate until a condition is met.

### Examples

```bash
# Bash

# Bash
# for var in items; do ... done
# while [ condition ]; do ... done

for i in 1 2 3 4 5; do
  echo "Welcome $i times"
done

count=1
while [ $count -le 5 ]; do
  echo "Count: $count"
  count=$(( count + 1 ))
done
```

```python
# Python
# for var in collection: ...
# while condition: ...

for i in range(1, 6):
  print(f"Welcome {i} times")

count = 1
while count <= 5:
  print(f"Count: {count}")
  count += 1
```

```powershell
# PowerShell
# for (init; condition; increment) { ... }
# while (condition) { ... }

for ($i = 1; $i -le 5; $i++) {
  Write-Host "Welcome $i times"
}

$count = 1
while ($count -le 5) {
  Write-Host "Count: $count"
  $count++
}
```

---

## Functions
Functions are blocks of code that perform a specific task.
They are used to organise code, improve readability, and allow reuse.

### Examples

```bash
# Bash
# funcName() {
#   decision (using $1, $2 for positional arguments)
# }

greet() {
  echo "Hello, $1"
}

greet "Rojo"
```

```python
# Python
# def funcName(parameter):
#   decision

def greet(name):
  print(f"Hello, {name}")

greet("Rojo")
```

```powershell
# PowerShell
# function FuncName {
#   param($parameter)
#   decision
# }

function Greet {
  param($name)
  Write-Host "Hello, $name"
}

Greet "Rojo"
```

---

## String Manipulation
String manipulation is the process of modifying or extracting parts of a string.

### Examples

```bash
# Bash
# Length: ${#varName}
# Upper:  ${varName^^}
# Lower:  ${varName,,}
# Change: ${varName/old/new}
# Slice:  ${varName:start:length}

str="hello world"
echo "${#str}"              
echo "${str^^}"              
echo "${str,,}"        
echo "${str/world/bash}"   
echo "${str:6:5}"         
```
> **Note** Put variables inside quotes to use as a single string. Otherwise Bash will treat them as multiple words 

```python
# Python
# Length: len(varName)
# Upper:  varName.upper()
# Lower:  varName.lower()
# Change: varName.replace(old, new)
# Slice:  varName[start:end]

str = "hello world"
print(len(str))               
print(str.upper())            
print(str.lower())            
print(str.replace("world", "python"))  
print(str)              
print(str.strip())
```

```powershell
# PowerShell
# Length: $varName.Length
# Upper:  $varName.ToUpper()
# Lower:  $varName.ToLower()
# Change: $varName.Replace(old, new)
# Slice:  $varName.Substring(start, length)

$str = "hello world"
$str.Length                                  
$str.ToUpper()                               
$str.ToLower()                               
$str.Replace("world", "powershell")  
$str.Substring(6, 5)                 
$str.Trim()
```

---

## Lists / Arrays
Lists and arrays store multiple values in a single variable.

### Examples

```bash
# Bash
# arrayName=(item1 item2)
# Access: ${arrayName[index]}
# Length: ${#arrayName[@]}
# Append: arrayName+=(item)

myArray=("Hello" "World" "Bash")
echo "${myArray[0]}"        
echo "${#myArray[@]}"       
echo "${myArray[@]}"        
myArray+=("NewItem")
```

```python
# Python
# listName = [item1, item2]
# Access: listName[index]
# Length: len(listName)
# Append: listName.append(item)

myList = ["Hello", "World", "Python"]
print(myList[0])          
print(len(myList))        
myList.append("NewItem")  
myList.remove("World")
```
```PowerShell
# PowerShell
# $arrayName = @(item1, item2)
# Access: $arrayName[index]
# Length: $arrayName.Length
# Append: $arrayName += item

$myArray = @("Hello", "World", "PowerShell")
$myArray[0]               
$myArray.Length           
$myArray += "NewItem"
```
---

## File I/O
File I/O is the process of reading from and writing to files.

### Examples

```bash
# Bash
# Read text:  content=$(cat file)
# Overwrite:  echo "text" > file
# Append:     echo "text" >> file

content=$(cat file.txt)
echo "$content"

while IFS= read -r line; do
  echo "$line"
done < file.txt

echo "Hello, World!" > file.txt
echo "Another line" >> file.txt
```

```python
# Python
# Read text:  with open(file, "r") as f: content = f.read()
# Overwrite:  with open(file, "w") as f: f.write("text")
# Append:     with open(file, "a") as f: f.write("text")

with open("file.txt", "r") as f:
  content = f.read()
  print(content)

with open("file.txt", "r") as f:
  for line in f:
    print(line.strip())

with open("file.txt", "w") as f:
  f.write("Hello, World!")

with open("file.txt", "a") as f:
  f.write("Another line\n")
```

```powershell
# PowerShell
# Read text:  $content = Get-Content file
# Overwrite:  Set-Content file "text"
# Append:     Add-Content file "text"

$content = Get-Content "file.txt"
Write-Host $content

Get-Content "file.txt" | ForEach-Object {
  Write-Host $_
}

Set-Content "file.txt" "Hello, World!"
Add-Content "file.txt" "Another line"
```

---

## Error Handling
Error handling is the process of catching and responding to errors in a program rather than letting it silently fail.

### Examples

```bash
# Bash
# Action: Command checks or trapping errors globally
# Check:  if ! command; then decision; fi
# Global: trap 'decision' ERR

if ! cp source.txt dest.txt; then
  echo "Error: copy failed"
  exit 1
fi

trap 'echo "An error occurred on line $LINENO"' ERR

ls /nonexistent
if [ $? -ne 0 ]; then
  echo "Command failed"
fi
```

```python
# Python
# try:
#   protected_action
# except ErrorType:
#   fallback_decision
# finally:
#   cleanup_decision

try:
  with open("file.txt", "r") as f:
    content = f.read()
except FileNotFoundError:
  print("Error: file not found")
except PermissionError:
  print("Error: permission denied")
finally:
  print("This runs whether or not an error occurred")
```

```powershell
# PowerShell
# try {
#   protected_action
# } catch [ErrorType] {
#   fallback_decision
# } finally {
#   cleanup_decision
# }

try {
  Get-Content "file.txt" -ErrorAction Stop
} catch [System.IO.FileNotFoundException] {
  Write-Host "Error: file not found"
} catch {
  Write-Host "Unexpected error: $_"
} finally {
  Write-Host "This runs whether or not an error occurred"
}
```

> **Note:** In PowerShell, `-ErrorAction Stop` is required to make a cmdlet throw a catchable exception. Without it, many errors are non-terminating and will not be caught by `try/catch`.

---

## Script Arguments
Script arguments allow values to be passed into a script at runtime, making scripts reusable without hardcoding values.

### Examples

```bash
# Bash
# Access variables sequentially using positional identifiers:
# $0 (script path/name), $1 (first arg), $2 (second arg), $@ (all args)

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All arguments: $@"
echo "Number of arguments: $#"
```

```python
# Python
# Base approach leveraging sys.argv elements:
# sys.argv[0] (script path/name), sys.argv[1] (first arg)

import sys

print(f"Script name: {sys.argv[0]}")
print(f"First argument: {sys.argv[1]}")
print(f"All arguments: {sys.argv[1:]}")
```

```powershell
# Python
# Base approach leveraging sys.argv elements:
# sys.argv[0] (script path/name), sys.argv[1] (first arg)

import sys

print(f"Script name: {sys.argv[0]}")
print(f"First argument: {sys.argv[1]}")
print(f"All arguments: {sys.argv[1:]}")
```

> **Note:** PowerShell's `param()` block must be the first statement in the script. Arguments are named rather than positional, which makes scripts much more readable than Bash's `$1 $2` approach.