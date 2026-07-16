#!/bin/bash

set -euo pipefail

python figlet.py

# Check if directories exist and create them if they don't.
mkdir -p database reports monitored

# Create new file 'current.txt'
: > database/current.txt

find ./monitored -type f | while read file; do
  sha256sum "$file" >> database/current.txt
done

python compare.py
