#!/bin/bash

set -euo pipefail
source hash_generate.sh
python3 figlet.py

# Check if directories exist and create them if they don't.
mkdir -p database reports monitored

# Create new file 'current.txt'
: > database/current.txt

hash_generate

python3 compare.py
