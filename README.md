# File Integrity Checker

## Overview
The File Integrity Checker is a script that monitors and compares file changes in a specified directory using SHA-256 hashes. It generates baseline and current hash files and checks for discrepancies.

## Features
- Generates SHA-256 hash files for monitored files.
- Compares baseline and current hash files to detect changes.
- Displays a welcome message using figlet.

## Usage
1. Initialize baseline hashes: `./monitor.sh --init`
2. Check for changes: `./monitor.sh --check`

## Directories
- `monitored/`: Directory containing files to be monitored.
- `database/`: Directory containing baseline and current hash files.
- `reports/`: Directory for storing reports (currently unused).

## Files
- `hash_generate.sh`: Script to generate baseline and current hash files.
- `monitor.sh`: Main script to initialize and check file integrity.
- `compare.py`: Script to compare baseline and current hash files.
- `figlet.py`: Script to display a welcome message using figlet.
- `.gitignore`: File to ignore monitored, reports, and database directories in Git.

## Dependencies
- `pyfiglet`: Used to display the welcome message.
- `filecmp`: Used to compare hash files.
- `sha256sum`: Used to generate SHA-256 hashes.
