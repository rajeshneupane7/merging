#!/bin/bash

# Path to your Git repository
cd /home/rajesh/work/bhuwan/merging_codes || exit

# Optional: Pull latest changes to avoid conflicts
#git pull origin main

# Stage all changes
git add -A

# Check if there are changes to commit
if git diff --cached --quiet; then
    echo "[$(date)] No changes detected. Exiting."
    exit 0
fi

# Commit and push
DATETIME=$(date '+%Y-%m-%d %H:%M:%S')
git commit -m "Auto commit on $DATETIME"
git push origin main

echo "[$(date)] Changes committed and pushed successfully."
