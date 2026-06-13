#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: Missing argument. Usage: ./log_analysis.sh <log_file_path>"
    exit 1
fi

log_file=$1

if [ ! -f "$log_file" ]; then
    echo "Error: Log file '$log_file' not found"
    exit 1
fi

# Read log file
echo "=== Log Contents ==="
no_of_lines=$(wc -l < "$log_file")
echo "Total lines: $no_of_lines"

if [ "$no_of_lines" -le 20 ]; then
    cat "$log_file"
else
    echo "Showing last 20 lines:"
    tail -n 20 "$log_file"
fi

# Filter by keyword
echo ""
echo "=== Keyword Filter ==="
read -p "Keyword: " keyword
grep --color=auto -i "$keyword" "$log_file" || echo "No matches found for '$keyword'"

# Count occurrences
echo ""
echo "=== Occurrence Count ==="
count=$(grep -ci "$keyword" "$log_file")
echo "Occurrences of '$keyword': $count"

# Filter by date
echo ""
echo "=== Filter by Date ==="
read -p "Date (e.g. Jun 13): " date_filter
grep "$date_filter" "$log_file" || echo "No entries found for '$date_filter'"

# Summarise
echo ""
echo "=== Summary (Errors, Warnings, Critical) ==="
grep -Ei "error|warning|critical|failed" "$log_file" || echo "No errors or warnings found"