#!/bin/sh
ln -s "$PWD/vim" "$HOME/.vim"
ln -s "$PWD/vimrc" "$HOME/.vimrc"
ln -s "$PWD/gvimrc" "$HOME/.gvimrc"

ln -s "$PWD/zsh" "$HOME/.zsh"
ln -s "$PWD/zshrc" "$HOME/.zshrc"

ln -s "$PWD/tmux.conf" "$HOME/.tmux.conf"

ln -s "$PWD/gitconfig" "$HOME/.gitconfig"
ln -s "$PWD/gitignore" "$HOME/.gitignore"
ln -s "$PWD/gitignore_global" "$HOME/.gitignore_global"
ln -s "$PWD/rspec" "$HOME/.rspec"

# Something about cloning the git repo or cloning and failing causes
# a weird infinite loop of symlinks between dotfiles/vim and ~/.vim

#cd "$HOME/.vim/bundle/Command-T/ruby/command-t"
#RBENV_VERSION=1.8.7-p299
#rbenv local system
#export ARCHFLAGS="-arch i386"
#rake make

# Setup git global ignore
# git config --global core.excludesfiles ~/.gitignore_global
