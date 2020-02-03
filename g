#!/usr/bin/bash

# git wrapper to manage the dotfiles repo
# enforcing dotfiles management from the user home directory
#
# list local dotfiles changes
#
#	$ cd ~
#   $ ./g diff
# 
# commit and push .vimrc config file
#
# 	$ cd ~
# 	$ ./g add .vimrc
#   $ ./g commit -m "Add .vimrc"
#	$ ./g push

git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME  "$@"