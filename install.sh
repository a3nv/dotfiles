#!/bin/bash
LOG_FILE="/tmp/dotfiles_install.log"
exec > >(tee -a $LOG_FILE) 2>&1
install_mac() {
	if ! command -v brew &> /dev/null; then
		echo "Homebrew not found. Installing homebrew..."
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	fi 
	if ! command -v nvim &> /dev/null; then
		echo "Installing neovim..."
		brew install neovim	
	else
		echo "Neovim is already installed."
	fi 
	if ! command -v tmux &> /dev/null; then
		echo "Installing tmux..."
		brew install tmux	
	else
		echo "Tmux is already installed."
	fi 
	brew install neovim tmux
}

install_linux() {
	sudo apt update
	if ! command -v nvim &> /dev/null; then
		echo "Installing neovim..."
		sudo apt install -y neovim
	else
		echo "Neovim is already installed."
	fi 
	if ! command -v tmux &> /dev/null; then
		echo "Installing tmux..."
		sudo apt install -y tmux	
	else
		echo "Tmux is already installed."
	fi 
}

if [[ "$OSTYPE" == "darwin"* ]]; then
	install_mac
else
	install_linux	
fi

