#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"

# Create necessary directories
mkdir -p ~/.config/nvim

# Create symbolic links
ln -sf "$DIR/config/nvim/init.lua" ~/.config/nvim/init.lua
ln -sf "$DIR/tmux.conf" ~/.tmux.conf

echo "Setup complete!"

