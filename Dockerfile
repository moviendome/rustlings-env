# Use Ubuntu as base image
FROM ubuntu:latest

# Prevent timezone prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

# Install basic dependencies
RUN apt-get update && apt-get install -y \
    software-properties-common \
    curl \
    wget \
    git \
    fzf \
    ripgrep \
    pandoc \
    npm \
    tmux \
    fonts-firacode \
    && rm -rf /var/lib/apt/lists/*

# Add Neovim PPA and install the latest Neovim
RUN add-apt-repository ppa:neovim-ppa/unstable && \
    apt-get update && \
    apt-get install -y neovim

# Install Rust and configure environment
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
# Source the cargo environment
SHELL ["/bin/bash", "-c"]

# Install Rustlings (with environment properly sourced)
RUN source "$HOME/.cargo/env" && \
    cargo install --git https://github.com/rust-lang/rustlings.git rustlings

RUN rustup component add rust-analyzer

# Set up LazyVim
RUN git clone https://github.com/LazyVim/starter /root/.config/nvim
RUN rm -rf /root/.config/nvim/.git

# Copy tmux configuration
COPY tmux.conf /root/.tmux.conf

# Set up entry script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /workspace

ENTRYPOINT ["/entrypoint.sh"]
