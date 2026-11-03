#!/bin/bash
# ==============================================================================
# Auto-Backup Daemon: Automatically commits & pushes changes to GitHub
# Runs silently in background every 2 minutes whenever changes are detected
# ==============================================================================

# Ensure git user is set if not already present
git config user.name >/dev/null 2>&1 || git config user.name "Codespaces Auto-Backup"
git config user.email >/dev/null 2>&1 || git config user.email "backup@codespaces.local"

REPO_DIR="/workspaces/my-mssql-project"

while true; do
    sleep 120
    
    if [ -d "$REPO_DIR/.git" ]; then
        cd "$REPO_DIR" || continue
        
        # Check if there are modified, added, or deleted files
        if [ -n "$(git status --porcelain 2>/dev/null)" ]; then
            TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
            git add -A
            git commit -m "Auto-backup: $TIMESTAMP" --no-verify >/dev/null 2>&1
            git push origin HEAD >/dev/null 2>&1
        fi
    fi
done
