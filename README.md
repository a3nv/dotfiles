# dotfiles

## MacOS
All the files under the root folder should be placed into the user directory.

### .pythonrc
Is a configuration for interactive shell. Since the version 3+ (not sure) there is a feature enabled by default that when the user is entering an interactive shell commands will be written in the history file.

## Linux
### List of configs

- xmonad
- .vimrc
- ranger config files

### Setup from scratch

- xmonad - windows tiling manager
- xmobar - simple status bar
- alacritty - terminal

#### Ranger setup

After renger is installed on your computer do not forget to run `ranger --copy-config=all` command. It will copy default settings to the home folder `~/.config/ranger`. Please see tha manual for an additional information [wiki.archlinux.org](https://wiki.archlinux.org/index.php/ranger)


## Dotfiles from scratch

```bash
docker build --no-cache -t dotfiles-test .
docker run --name dotfiles-container -it dotfiles


# Inside the Docker container, verify the installations and configurations

nvim --version
tmux -V
nvim
tmux

```
