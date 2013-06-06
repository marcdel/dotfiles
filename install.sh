#!/bin/sh
cp "$PWD/vim" "$HOME/.vim"
ls -s "$PWD/vim" "$HOME/.vim"
cp "$PWD/vim/vimrc" "$HOME/.vimrc"
ls -s "$PWD/vim/vimrc" "$HOME/.vimrc"
cp "$PWD/vim/gvimrc" "$HOME/.gvimrc"
ls -s "$PWD/vim/gvimrc" "$HOME/.gvimrc"

cp "$PWD/zsh" "$HOME/.zsh"
ls -s "$PWD/zsh" "$HOME/.zsh"
cp "$PWD/zshrc" "$HOME/.zshrc"
ls -s "$PWD/zshrc" "$HOME/.zshrc"

cp "$PWD/gitconfig" "$HOME/.gitconfig"
ls -s "$PWD/gitconfig" "$HOME/.gitconfig"

cp "$PWD/gitignore" "$HOME/.gitignore"
ls -s "$PWD/gitignore" "$HOME/.gitignore"

cp "$PWD/rspec" "$HOME/.rspec"
ls -s "$PWD/rspec" "$HOME/.rspec"

git clone git@git.wincent.com:command-t.git "$HOME/.vim/bundle"
git clone git@github.com:altercation/vim-colors-solarized.git "$HOME/.vim/bundle"
git clone git@github.com:tpope/vim-commentary.git "$HOME/.vim/bundle"
git clone git@github.com:scrooloose/nerdtree.git "$HOME/.vim/bundle"
git clone git@github.com:thoughtbot/vim-rspec.git "$HOME/.vim/bundle"
