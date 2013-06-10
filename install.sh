#!/bin/sh
ln -s "$PWD/vim" "$HOME/.vim"
ln -s "$PWD/vimrc" "$HOME/.vimrc"
ln -s "$PWD/gvimrc" "$HOME/.gvimrc"

ln -s "$PWD/zsh" "$HOME/.zsh"
ln -s "$PWD/zshrc" "$HOME/.zshrc"

ln -s "$PWD/gitconfig" "$HOME/.gitconfig"
ln -s "$PWD/gitignore" "$HOME/.gitignore"
ln -s "$PWD/rspec" "$HOME/.rspec"

# Something about cloning the git repo or cloning and failing causes
# a weird infinite loop of symlinks between dotfiles/vim and ~/.vim

#cd "$Home/.vim/bundle/"
#git clone git@github.com:gmarik/vundle.git
#vim +BundleInstall +qall
