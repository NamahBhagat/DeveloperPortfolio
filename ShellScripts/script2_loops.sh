#!/bin/bash
echo "--- For Loop: Counting 1 to 5 ---"
for i in 1 2 3 4 5; do
  echo " Iteration: $i"
done

echo ""
echo "--- While Loop: Powers of 2 ---"
n=0
while [ $n -le 4 ]; do
  echo " 2^$n = $((2**n))"
  n=$((n+1))
done

echo ""
echo "--- Even / Odd check for 1 to 10 ---"
for i in $(seq 1 10); do
  if [ $((i % 2)) -eq 0 ]; then
    echo " $i is EVEN"
  else
    echo " $i is ODD"
  fi
done
