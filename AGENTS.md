# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
# Install all configurations (creates symlinks to home directory)
./install.sh

# Install/update Homebrew packages
brew bundle --file=homebrew/Brewfile

# Reload shell configuration after changes
source ~/.zshrc
```

## Architecture

This is a macOS dotfiles repository using **symlink-based configuration management**. Each application has its own directory containing configuration files that `install.sh` symlinks to the appropriate locations (e.g., `~/.config/`, `~/Library/Application Support/`).

### Key Patterns

- **Directory-per-application**: Each tool (nvim, cursor, git, zsh, etc.) has its own directory
- **Shared AI instructions**: `claude/CLAUDE.md` is symlinked to `~/.claude/CLAUDE.md`, `~/.gemini/AGENTS.md`, and `~/.config/codex/AGENTS.md`
- **Homebrew as package manager**: All CLI tools, applications, and VS Code extensions defined in `homebrew/Brewfile`

### Adding New Tool Configuration

1. Create a directory for the tool's config files
2. Add symlink commands to `install.sh`
3. Add any packages to `homebrew/Brewfile`
