#!/bin/bash
# Author: Namah Bhagat
echo "===== Namah Bhagat | Roll No: 2601730024 | $(date) ====="
echo "CPU Model: $(lscpu | grep 'Model name' | sed 's/Model name:[ ]*//')"
echo "CPU Cores: $(nproc)"
free -h | awk '/Mem:/ {print "Total Memory: "$2" | Used Memory: "$3}'
echo "Top 3 processes by CPU:"
ps aux | sort -nrk 3 | head -3
echo "Report generated successfully"
