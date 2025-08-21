#!/bin/bash

# Claude Code Status Line Script
# Displays current directory, git info, and usage statistics

set -euo pipefail

# === LINE 1: Directory and Git Info ===
get_directory_info() {
    local current_dir="${PWD/#$HOME/~}"
    local git_info=""

    if git rev-parse --git-dir >/dev/null 2>&1; then
        local branch
        local changes
        local staged_changes
        local total_added
        local total_deleted

        branch=$(git branch --show-current 2>/dev/null)
        if [[ -n "$branch" ]]; then
            git_info=" [$branch"

            # Get git changes (insertions/deletions)
            changes=$(git diff --numstat 2>/dev/null | awk '{added+=$1; deleted+=$2} END {if(added+deleted>0) printf "+%d,-%d", added, deleted}')

            # Include staged changes as well
            staged_changes=$(git diff --cached --numstat 2>/dev/null | awk '{added+=$1; deleted+=$2} END {if(added+deleted>0) printf "+%d,-%d", added, deleted}')

            # Combine changes
            if [[ -n "$changes" && -n "$staged_changes" ]]; then
                total_added=$(echo "$changes $staged_changes" | awk -F'[+,-]' '{print ($2 + $4)}')
                total_deleted=$(echo "$changes $staged_changes" | awk -F'[+,-]' '{print ($3 + $5)}')
                git_info="${git_info} +${total_added},-${total_deleted}"
            elif [[ -n "$changes" ]]; then
                git_info="${git_info} ${changes}"
            elif [[ -n "$staged_changes" ]]; then
                git_info="${git_info} ${staged_changes}"
            fi

            git_info="${git_info}]"
        fi
    fi

    echo "${current_dir}${git_info}"
}

# === LINE 2: Usage Statistics ===
get_usage_info() {
    ccusage statusline --visual-burn-rate emoji
}

# === Main Execution ===
main() {
    get_directory_info
    get_usage_info
}

main "$@"
