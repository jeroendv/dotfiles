#!/usr/bin/bash

# fetch script then source it to bootstrap dotfile management
# 
# 	$ wget https://raw.githubusercontent.com/jeroendv/dotfiles/master/.bootstrapDotFiles.sh 
# 	$ . bootstrapDotFiles.sh

# clone the bare dotfiles repo
cd ~
git clone --bare https://github.com/jeroendv/dotfiles.git .dotfiles


# reset to master branch without changing the working copy
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME reset --mixed



# make the g script executable
# such that ./g can be used in the home folder to manage the dotfiles repo
chmod u+x g


# don't list untracked files in the status of my dotfiles repo
./g  config --local status.showUntrackedFiles no

# list local differences with managed dotfiles.
./g status
