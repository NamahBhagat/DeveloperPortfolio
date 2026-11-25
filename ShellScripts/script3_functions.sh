#!/bin/bash
is_prime() {
  local n=$1
  if [ "$n" -lt 2 ]; then return 1; fi
  for ((i=2; i*i<=n; i++)); do
    if [ $((n % i)) -eq 0 ]; then return 1; fi
  done
  return 0
}

if [ $# -gt 0 ]; then
  echo "Checking command-line arguments:"
  for num in "$@"; do
    if is_prime "$num"; then echo "$num is PRIME"; else echo "$num is NOT prime"; fi
  done
else
  echo "Checking 2 to 15:"
  for num in $(seq 2 15); do
    if is_prime "$num"; then echo "$num is PRIME"; else echo "$num is NOT prime"; fi
  done
fi
