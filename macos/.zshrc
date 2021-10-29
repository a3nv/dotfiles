######################################
# Suppress ssh warnings
######################################
# https://keith.github.io/xcode-man-pages/ssh-add.1.html
# Enables or disables the older processing of the -A and -K options used in earlier macOS releases.
APPLE_SSH_ADD_BEHAVIOR=macos

######################################
# zsh history
######################################
HISTSIZE=5000
SAVEHIST=5000
# NOTE! it seems that folder stucture should be prepared otherwise the file will not show up
export HISTFILE=~/.cache/zsh/history
setopt appendhistory # append history to the history file (without overwriting)
setopt sharehistory # share history across terminals
setopt incappendhistory # immediately append to the history file, do not wait for terminal to be closed
