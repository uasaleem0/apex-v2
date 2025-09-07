#!/bin/bash
# APEX Note Logger - Context-Preserving Note System
# Usage: apex-note "your observation"

# Get current timestamp
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
DATE=$(date '+%Y-%m-%d')

# Create logs directory if it doesn't exist
mkdir -p "docs/meta-analysis"

# Log file for today
LOG_FILE="docs/meta-analysis/apex-notes-$DATE.md"

# Get current project context (if available)
if [ -f "CLAUDE.md" ]; then
    PROJECT_NAME=$(basename "$(pwd)")
else
    PROJECT_NAME="Unknown"
fi

# Detect current phase based on recent activity (simplified)
CURRENT_PHASE="General"
if [ -f ".apex-session" ]; then
    CURRENT_PHASE=$(cat .apex-session)
fi

# Create log entry without any response or interruption
cat >> "$LOG_FILE" << EOF

---
**Timestamp**: $TIMESTAMP
**Project**: $PROJECT_NAME
**Phase**: $CURRENT_PHASE
**Note**: $1

EOF

# Silent confirmation (no output to avoid context pollution)
exit 0