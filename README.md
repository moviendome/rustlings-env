# 🦀 Rustlings Docker Development Environment

A streamlined Docker-based development environment for learning Rust through Rustlings exercises. This setup eliminates the hassle of manual tooling installation and configuration, providing you with a pre-configured environment that's ready to go.

![Rustlings Docker ENV](/screenshots/rustlings.png)

## ✨ Features

- **Zero Local Installation**: No need to install Rust, IDE, or Rustlings locally
- **Pre-configured LazyVim**: Optimized for Rust development with essential plugins
- **GitHub Copilot Integration**: AI assistance built-in with both Copilot and Copilot Chat
- **Tmux-based Workspace**: Split screen setup with editor and Rustlings side by side
- **Reproducible Environment**: Consistent setup across different machines

## 🚀 Quick Start

1. Clone this repository:
   ```bash
   git clone https://github.com/moviendome/rustlings-env.git
   cd rustlings-env
   ```

2. Build the Docker image:
   ```bash
   make build
   ```

3. Start the environment:
   ```bash
   make run
   ```

That's it! You'll be dropped into a Tmux session with:
- Left pane: LazyVim editor with Rust support
- Right pane: Rustlings exercises

## 🛠 What's Included

### Development Environment
- Rust toolchain (latest stable)
- Cargo package manager
- Rustlings exercises
- Git

### Editor Setup (LazyVim)
- Rust-analyzer for intelligent code completion
- GitHub Copilot for AI-assisted development
- GitHub Copilot Chat for interactive coding help
- Syntax highlighting
- Code formatting
- Error diagnostics
- Auto-completion

### Terminal Setup
- Tmux for split-screen workspace
- Custom key bindings for efficient navigation

## 📚 Using the Environment

### Tmux Commands
- `Ctrl-b %`: Split pane vertically
- `Ctrl-b →`: Move to right pane
- `Ctrl-b ←`: Move to left pane
- `Ctrl-b d`: Detach session

### LazyVim Shortcuts
- `Space`: Leader key
- `Space Space`: Find files
- `Space /`: Live grep 
- `Space e`: File explorer
- `gc`: Toggle comment
- `K`: Show documentation

### Rustlings Commands
- `rustlings watch`: Start exercise watcher
- `rustlings hint exercise_name`: Get exercise hint
- `rustlings verify`: Verify current exercise

## 🔧 Customization

The environment can be customized by modifying:
- `Dockerfile`: Add or modify installed tools
- `config/`: LazyVim and Tmux configurations
- `Makefile`: Adjust build and run commands

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Rustlings](https://github.com/rust-lang/rustlings) for the excellent Rust exercises
- [LazyVim](https://github.com/LazyVim/LazyVim) for the Neovim configuration
- [GitHub Copilot](https://github.com/features/copilot) for AI assistance

---
Made with ❤️ for the Rust learning community
