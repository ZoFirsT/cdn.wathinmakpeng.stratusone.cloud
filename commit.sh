#!/bin/bash

# Function to make auto commit with popular commit messages
auto_commit() {
    local messages=(
        "Initial commit"
        "Update documentation"
        "Fix bug"
        "Add new feature"
        "Code cleanup"
        "Improve performance"
        "Update dependencies"
        "Refactor code"
        "Fix typo"
        "Minor changes"
    )
    
    # Check if there are changes to commit
    if [[ -n $(git status -s) ]]; then
        # Get random message from array
        local random_index=$((RANDOM % ${#messages[@]}))
        local commit_message="${messages[random_index]}"
        
        # Add all changes and commit
        git add .
        git commit -m "$commit_message"
        echo "✅ Changes committed with message: $commit_message"
    else
        echo "❌ No changes to commit"
    fi
}

# Execute the function
auto_commit
