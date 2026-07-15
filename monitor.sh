#!/bin/bash

set -euo pipefail

# Check if directories exist and create them if they don't.
if [ ! -d database ] || [ ! -d reports ] || [ ! -d monitored ]; then
  mkdir -p database reports monitored
  echo "Missing directories created"
else
  echo 'All directories already exist'
fi

# Create new file 'current.txt'
: > database/current.txt

# if
for file in monitored/*; do
    sha256sum "$file" >> reports/report.txt
done
# fi

python compare.py
