#!/bin/bash

# Script to update hasCompletedOnboarding in ~/.claude.json

# Check if jq is installed, install if not
if ! command -v jq &>/dev/null; then
  echo "jq not found. Installing..."
  brew install -q jq
fi

# Path to the claude.json file
CLAUDE_JSON="$HOME/.claude.json"

# Update hasCompletedOnboarding to true in-place
tmp=$(mktemp)
jq '.hasCompletedOnboarding = true' "$CLAUDE_JSON" >"$tmp" && cat "$tmp" >"$CLAUDE_JSON"
rm "$tmp"

echo "Successfully updated hasCompletedOnboarding to true in $CLAUDE_JSON"
