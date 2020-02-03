#!/usr/bin/bash

# source this scrip to bootstrap dotfile management
# 
# 	$ . bootstrapDotFiles.sh


# make the g script executable
# such that ./g can be used in the home folder to manage the dotfiles repo
chmod u+x g


# don't list untracked files in the status of my dotfiles repo
./g  config --local status.showUntrackedFiles no