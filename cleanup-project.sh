#!/bin/bash
# Project Cleanup Utility - Safely remove project directories

set -e

cleanup_project() {
    local project_name="$1"
    
    if [[ -z "$project_name" ]]; then
        echo "❌ Error: Project name required"
        echo "Usage: $0 <project-name>"
        exit 1
    fi
    
    echo "🧹 Cleaning up project: $project_name"
    
    # Multiple possible locations
    local locations=(
        "./projects/$project_name"
        "./$project_name" 
        "./Claude/$project_name"
        "./Claude/apex-contexts/$project_name"
        "./.claude/sessions/$project_name"
        "./.claude/feedback/$project_name"
    )
    
    for location in "${locations[@]}"; do
        if [[ -d "$location" ]]; then
            echo "📂 Found: $location"
            
            # Try multiple cleanup methods
            if ! rm -rf "$location" 2>/dev/null; then
                echo "⚠️  Standard removal failed, trying alternative methods..."
                
                # Method 1: Remove files first
                find "$location" -type f -delete 2>/dev/null || true
                
                # Method 2: Force remove with different permissions
                chmod -R 755 "$location" 2>/dev/null || true
                rm -rf "$location" 2>/dev/null || true
                
                # Method 3: Move to temp and let system clean up
                if [[ -d "$location" ]]; then
                    local temp_name="/tmp/apex-cleanup-$$-$(date +%s)"
                    mv "$location" "$temp_name" 2>/dev/null || true
                    rm -rf "$temp_name" 2>/dev/null &
                    echo "♻️  Moved to background cleanup: $temp_name"
                fi
            fi
            
            if [[ ! -d "$location" ]]; then
                echo "✅ Removed: $location"
            else
                echo "⚠️  Could not remove: $location (may need manual cleanup)"
            fi
        fi
    done
    
    echo "✅ Project cleanup completed for: $project_name"
}

# Run cleanup
cleanup_project "$1"