# 🏠 Dotfiles

A comprehensive collection of my personal dotfiles and development environment configuration for macOS. This repository contains configurations for various tools and applications that I use daily, organized in a clean and maintainable structure.

## ✨ Features

### 🖥️ **Development Environment**

- **Shell**: Zsh with Powerlevel10k theme and extensive plugin ecosystem
- **Package Manager**: Homebrew with curated package list
- **Editor**: Neovim with custom configuration
- **IDE**: Cursor (VS Code fork) with optimized settings
- **Window Manager**: i3wm configuration for tiling window management

### 🛠️ **Development Tools**

- **Languages**: Go, Python, Rust, Node.js, Lua
- **LSP Support**: Language servers for multiple programming languages
- **Code Quality**: Black, Ruff, Prettier, ShellCheck
- **Database**: Various database clients and tools
- **Version Control**: Git with custom aliases and global ignore

### 🎨 **Productivity & Utilities**

- **File Management**: Enhanced `ls` (lsd), `cat` (bat), `du` (dust)
- **Search**: ripgrep, fd, fzf for fast file searching
- **System Monitoring**: btop, htop, procs
- **Network**: curl alternatives, speed testing
- **Input Method**: RIME with extensive Chinese input dictionaries

### 📱 **Applications**

- **Terminal**: Warp terminal emulator
- **Browser Extensions**: Various productivity extensions
- **Media**: Video/audio processing tools
- **AI Tools**: Claude, Gemini CLI, Ollama
- **Finance**: Beancount for personal finance tracking

## 🚀 Quick Start

### Prerequisites

- macOS (tested on macOS 14+)
- Git
- Administrator privileges (for Homebrew installation)

### Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/yourusername/dotfiles.git
   cd dotfiles
   ```

2. **Run the installation script**:

   ```bash
   chmod +x install.sh
   ./install.sh
   ```

3. **Install Homebrew packages**:

   ```bash
   brew bundle --file=homebrew/Brewfile
   ```

4. **Restart your terminal** to load the new configuration.

## 📁 Project Structure

```
dotfiles/
├── cursor/              # Cursor IDE configuration
├── ghostty/             # Ghostty terminal configuration
├── git/                 # Git global configuration
├── gomi/                # Safe file deletion tool config
├── homebrew/            # Homebrew package definitions
├── i3/                  # i3 window manager configuration
├── i3status-rust/       # i3 status bar configuration
├── nvim/                # Neovim configuration
├── python/              # Python linting configuration
├── rime/                # RIME input method configuration
├── wakatime/            # WakaTime configuration
├── zsh/                 # Zsh shell configuration
├── install.sh           # Installation script
└── README.md           # This file
```

## 🔧 Key Configurations

### Zsh Setup

- **Theme**: Powerlevel10k with custom prompt
- **Plugins**: Auto-suggestions, syntax highlighting, vi mode, git prompt
- **Aliases**: Enhanced commands for `ls`, `cat`, `du`, `top`
- **Auto-completion**: Advanced completion system

### Neovim

- Custom configuration optimized for development
- Language server protocol support
- Enhanced editing experience

### Git Configuration

- Global gitignore for common files
- Custom aliases and shortcuts
- Optimized for development workflow

### RIME Input Method

- Extensive Chinese input dictionaries
- Custom schemas for different input methods
- Emoji and special character support

### Homebrew Packages

- **Development**: Go, Python, Rust, Node.js
- **Tools**: ripgrep, fd, fzf, bat, lsd
- **Applications**: Various productivity apps
- **VS Code Extensions**: Curated list of useful extensions

## 🎯 Customization

### Adding New Packages

1. Edit `homebrew/Brewfile` to add new packages
2. Run `brew bundle --file=homebrew/Brewfile` to install

### Modifying Configurations

- Each tool has its own directory with configuration files
- Edit the respective config files and restart the application
- For shell changes, restart your terminal or run `source ~/.zshrc`

### Adding New Tools

1. Create a new directory for the tool's configuration
2. Add symlink commands to `install.sh`
3. Update this README with the new tool

## 🔄 Maintenance

### Updating Configurations

```bash
# Update Homebrew packages
brew bundle --file=homebrew/Brewfile

# Update git submodules (if any)
git submodule update --init --recursive

# Reload shell configuration
source ~/.zshrc
```

### Backup Current Settings

Before running the installation script, you may want to backup your existing configurations:

```bash
# Backup existing dotfiles
mkdir ~/dotfiles-backup
cp ~/.zshrc ~/dotfiles-backup/ 2>/dev/null || true
cp ~/.gitconfig ~/dotfiles-backup/ 2>/dev/null || true
# ... backup other files as needed
```

## 🤝 Contributing

Feel free to submit issues and enhancement requests! If you want to contribute:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k) for the amazing shell theme
- [Homebrew](https://brew.sh/) for the excellent package manager
- [i3wm](https://i3wm.org/) for the tiling window manager
- [RIME](https://rime.im/) for the input method framework
- All the developers of the tools and applications included in this setup

---

**Note**: This setup is tailored for my personal workflow. Feel free to adapt it to your needs by modifying the configurations and package lists.
