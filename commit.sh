#!/bin/bash

# Get current date and time for commit message
current_datetime=$(date "+%Y-%m-%d %H:%M:%S")

# Add all changes
git add .

# Commit with timestamp
git commit -m "Auto commit: $current_datetime"

# Push to remote repository
git push origin main

echo "Changes committed and pushed successfully at $current_datetime"
