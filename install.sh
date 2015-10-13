#!/bin/bash

message ()
{
  RCOLOR=$(( ( RANDOM % 6 )  + 1 ))
  echo -e "Installing \033[1;3${RCOLOR}m$1\033[0m scripts..."
}

# BASH
message "Bash"
ln -sf ${PWD}/bash/bashrc ~/.bashrc
ln -sf ${PWD}/bash/bash_profile ~/.bash_profile
ln -sf ${PWD}/bash/bash_aliases ~/.bash_aliases

# BASH FZF
message "FZF"
rm -rf ~/.fzf
git clone -q https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install > /dev/null

# GIT
message "Git"
ln -sf ${PWD}/git/gitconfig ~/.gitconfig

# Execute it immediately
source ~/.bashrc