#!/bin/sh
ln -s "$PWD/vim" "$HOME/.vim"
ln -s "$PWD/vim/vimrc" "$HOME/.vimrc"
ln -s "$PWD/vim/gvimrc" "$HOME/.gvimrc"

ln -s "$PWD/zsh" "$HOME/.zsh"
ln -s "$PWD/zshrc" "$HOME/.zshrc"

ln -s "$PWD/gitconfig" "$HOME/.gitconfig"
ln -s "$PWD/gitignore" "$HOME/.gitignore"
ln -s "$PWD/rspec" "$HOME/.rspec"

git clone git@git.wincent.com:command-t.git "$HOME/.vim/bundle/commant-t"
git clone git@github.com:altercation/vim-colors-solarized.git "$HOME/.vim/bundle/vim-colors-solarized"
git clone git@github.com:tpope/vim-commentary.git "$HOME/.vim/bundle/vim-commanetary"
git clone git@github.com:scrooloose/nerdtree.git "$HOME/.vim/bundle/nerdtree"
git clone git@github.com:thoughtbot/vim-rspec.git "$HOME/.vim/bundle/vim-rspec"
