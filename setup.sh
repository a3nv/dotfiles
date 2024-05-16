#!/bin/bash
LOG_FILE="/tmp/dotfiles_setup.log"
exec > >(tee -a $LOG_FILE) 2>&1

# Get current direcory (where the script is)
DIR="$(cd "$(dirname "$0")" && pwd)"

# Create necessary directories
mkdir -p ~/.config

if [ -L  ~/.config/nvim ]; then
	rm ~/.config/nvim
elif [ -d ~/.config/nvim ]; then
       rm -rf ~/.config/nvim
fi       
# Create symbolic links
ln -sf "$DIR/config/nvim" ~/.config/nvim
ln -sf "$DIR/tmux.conf" ~/.tmux.conf

echo "Setup complete!"

