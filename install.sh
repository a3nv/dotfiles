#!/bin/bash

install_mac() {
	if ! command -v brew &> /dev/null; then
		echo "Homebrew not found. Installing homebrew..."
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	fi 
	brew install neovim tmux
}

install_linux() {
	sudo apt update
	sudo apt install -y neovim tmux
}

if [[ "$OSTYPE" == "darwin"* ]]; then
	install_mac
else
	install_linux	
fi

