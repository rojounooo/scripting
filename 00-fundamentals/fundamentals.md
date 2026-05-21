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
# varName = value

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
echo $name
```

```python
# Python
# Input: varName = input("<String>")
# Output: print({varName)

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
# Bash is dynamically typed — type annotation is not supported.
# Use declare for limited type control.

declare -i integerVar=123      # -i enforces integer
declare -r readOnlyVar="hello" # -r makes variable read-only
```

```python
# Python
# Type annotations are optional in Python — they are hints, not enforced at runtime.

stringVar: str = "Hello, World!"
integerVar: int = 123
floatVar: float = 123.45
booleanVar: bool = True
nullVar: None = None
```

```powershell
# PowerShell
# Place the type in square brackets before the variable name.

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
# Bash has no explicit casting. Use arithmetic expansion for integer operations.

numStr="42"
result=$(( numStr + 8 ))  
echo $result             

```python
# Python
# varName = newType(oldVar)

stringVar = "123"
integerVar = int(stringVar)     
floatVar = float(integerVar)    
backToString = str(integerVar)  
booleanVar = bool(0)            
```

```powershell
# PowerShell
# varName = [newType]$oldVar

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
# if, elif, else, fi

# if [ conditon ]; then 
#   decision

# elif [ conditon ]; then
#   decision 
# else 
#   decision
# fi (end)

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
# if, elif, else
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
# if, elseif, else

# if condition:
#   decision 
# elseif condition:
#   decision
# else:
#   decision

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

for i in range(1, 6):
  print(f"Welcome {i} times")

count = 1
while count <= 5:
  print(f"Count: {count}")
  count += 1
```

```powershell
# PowerShell
# Variables inside for loops need $ prefix. Use -le for less than or equal.

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

# Declare
greet() {
  echo "Hello, $1"   # $1 is the first argument passed to the function
}

# Call
greet "Rojo"
```

```python
# Python

# Declare
def greet(name):
  print(f"Hello, {name}")

# Call
greet("Rojo")
```

```powershell
# PowerShell

# Declare
function Greet {
  param($name)
  Write-Host "Hello, $name"
}

# Call
Greet "Rojo"
```

---

## String Manipulation
String manipulation is the process of modifying or extracting parts of a string.

### Examples

```bash
# Bash
# varName="strValue"
# Length: ${#varName}
# Convert to uppercase: ${varName^^}
# Convert to lowercase: ${varName,,}
# Replace a word: ${varName/wordToReplace/newWord}
# Extra substring: ${varName:start index: length}


str="hello world"

echo ${#str}               # Length:       11
echo ${str^^}              # Uppercase:    HELLO WORLD
echo ${str,,}              # Lowercase:    hello world
echo ${str/world/bash}     # Replace:      hello bash
echo ${str:6:5}            # Substring:    world  (start index, length)
```

```python
# Python

str = "hello world"

print(len(str))               # Length:       11
print(str.upper())            # Uppercase:    HELLO WORLD
print(str.lower())            # Lowercase:    hello world
print(str.replace("world", "python"))  # Replace: hello python
print(str[6:11])              # Substring:    world
print(str.strip())            # Trim whitespace from both ends
```

```powershell
# PowerShell

$str = "hello world"

$str.Length                          # Length:       11
$str.ToUpper()                       # Uppercase:    HELLO WORLD
$str.ToLower()                       # Lowercase:    hello world
$str.Replace("world", "powershell")  # Replace:      hello powershell
$str.Substring(6, 5)                 # Substring:    world  (start index, length)
$str.Trim()                          # Trim whitespace from both ends
```

---

## Lists / Arrays
Lists and arrays store multiple values in a single variable.

### Examples

```bash
# Bash
# No commas between elements. No spaces around =.

myArray=("Hello" "World" "Bash")

echo ${myArray[0]}        # First element:  Hello
echo ${#myArray[@]}       # Length:         3
echo ${myArray[@]}        # All elements:   Hello World Bash

myArray+=("NewItem")      # Append element
```

```python
# Python
# Python uses lists — arrays require the array module or numpy.

myList = ["Hello", "World", "Python"]

print(myList[0])          # First element:  Hello
print(len(myList))        # Length:         3
myList.append("NewItem")  # Append element
myList.remove("World")    # Remove element
```

```powershell
# PowerShell

$myArray = @("Hello", "World", "PowerShell")

$myArray[0]               # First element:  Hello
$myArray.Length           # Length:         3
$myArray += "NewItem"     # Append element
```

---

## File I/O
File I/O is the process of reading from and writing to files.

### Examples

```bash
# Bash

# Read entire file into a variable
content=$(cat file.txt)
echo "$content"

# Read file line by line
while IFS= read -r line; do
  echo "$line"
done < file.txt

# Write to a file (overwrites)
echo "Hello, World!" > file.txt

# Append to a file
echo "Another line" >> file.txt
```

```python
# Python

# Read from a file
with open("file.txt", "r") as f:
  content = f.read()
  print(content)

# Read line by line
with open("file.txt", "r") as f:
  for line in f:
    print(line.strip())

# Write to a file (overwrites)
with open("file.txt", "w") as f:
  f.write("Hello, World!")

# Append to a file
with open("file.txt", "a") as f:
  f.write("Another line\n")
```

```powershell
# PowerShell

# Read from a file
$content = Get-Content "file.txt"
Write-Host $content

# Read line by line
Get-Content "file.txt" | ForEach-Object {
  Write-Host $_
}

# Write to a file (overwrites)
Set-Content "file.txt" "Hello, World!"

# Append to a file
Add-Content "file.txt" "Another line"
```

---

## Error Handling
Error handling is the process of catching and responding to errors in a program rather than letting it silently fail.

### Examples

```bash
# Bash
# Bash has no try/catch. Use exit codes and conditional checks instead.

# Check if a command succeeded
if ! cp source.txt dest.txt; then
  echo "Error: copy failed"
  exit 1
fi

# Use trap to catch errors globally
trap 'echo "An error occurred on line $LINENO"' ERR

# Check exit code manually
ls /nonexistent
if [ $? -ne 0 ]; then
  echo "Command failed"
fi
```

```python
# Python

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
# Arguments are accessed with $1, $2, etc. $0 is the script name.

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All arguments: $@"
echo "Number of arguments: $#"

# Usage: bash script.sh Alice 25
```

```python
# Python — using sys.argv

import sys

print(f"Script name: {sys.argv[0]}")
print(f"First argument: {sys.argv[1]}")
print(f"All arguments: {sys.argv[1:]}")

# Usage: python script.py Alice 25

# Python — using argparse (recommended for anything beyond basic use)

import argparse

parser = argparse.ArgumentParser(description="Example script")
parser.add_argument("name", help="Your name")
parser.add_argument("--age", type=int, help="Your age")
args = parser.parse_args()

print(f"Hello, {args.name}. Age: {args.age}")

# Usage: python script.py Alice --age 25
```

```powershell
# PowerShell

param(
  [string]$name,
  [int]$age
)

Write-Host "Hello, $name. Age: $age"

# Usage: .\script.ps1 -name Alice -age 25
```

> **Note:** PowerShell's `param()` block must be the first statement in the script. Arguments are named rather than positional, which makes scripts much more readable than Bash's `$1 $2` approach.