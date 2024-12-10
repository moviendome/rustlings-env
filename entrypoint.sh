#!/bin/bash

# Source cargo environment
source "$HOME/.cargo/env"

# Create rustlings exercises if they don't exist
if [ ! -d "/workspace/rustlings" ]; then
  cd /workspace
  rustlings init
fi

# Start a new tmux session
tmux new-session -d -s dev -n rust

# Split the window vertically
tmux split-window -h -t dev:rust

# In the left pane, start neovim
tmux send-keys -t dev:rust.0 'cd /workspace/rustlings && nvim exercises/' C-m

# In the right pane, prepare rustlings
tmux send-keys -t dev:rust.1 'cd /workspace/rustlings && rustlings' C-m

# Select the left pane
tmux select-pane -t dev:rust.0

# Attach to the tmux session
tmux attach-session -t dev
