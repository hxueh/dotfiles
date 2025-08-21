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
        branch=$(git branch --show-current 2>/dev/null)
        if [[ -n "$branch" ]]; then
            git_info=" [$branch]"
        fi
    fi

    echo "${current_dir}${git_info}"
}

# === LINE 2: Usage Statistics ===
get_usage_info() {
    if ! command -v ccusage >/dev/null 2>&1; then
        echo "🎵 Model │ REPO $0.00 │ MONTHLY $0.00 │ WEEKLY $0.00 │ DAILY $0.00 │ 🔥 LIVE $0.00"
        return
    fi

    # Fetch usage data
    local daily_data weekly_data monthly_data session_data blocks_data
    daily_data=$(ccusage daily --json 2>/dev/null || echo '{}')
    weekly_data=$(ccusage weekly --json 2>/dev/null || echo '{}')
    monthly_data=$(ccusage monthly --json 2>/dev/null || echo '{}')
    session_data=$(ccusage session --json 2>/dev/null || echo '{}')
    blocks_data=$(ccusage blocks --active --json 2>/dev/null || echo '{}')

    # Extract costs using jq
    local session_cost weekly_cost monthly_cost daily_cost live_cost
    session_cost=$(echo "$session_data" | jq -r '.totals.totalCost // 0' 2>/dev/null || echo '0')
    weekly_cost=$(echo "$weekly_data" | jq -r '.weekly[-1].totalCost // 0' 2>/dev/null || echo '0')
    monthly_cost=$(echo "$monthly_data" | jq -r '.totals.totalCost // 0' 2>/dev/null || echo '0')
    daily_cost=$(echo "$daily_data" | jq -r '.daily[-1].totalCost // 0' 2>/dev/null || echo '0')
    live_cost=$(echo "$blocks_data" | jq -r '[.blocks[].costUSD] | add // 0' 2>/dev/null || echo '0')

    # Format and display
    printf "🎵 Model │ REPO $%.2f │ MONTHLY $%.2f │ WEEKLY $%.2f │ DAILY $%.2f │ 🔥 LIVE $%.2f\n" \
        "$session_cost" "$monthly_cost" "$weekly_cost" "$daily_cost" "$live_cost"
}

# === Main Execution ===
main() {
    get_directory_info
    get_usage_info
}

main "$@"
