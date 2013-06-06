#!/bin/sh
cp "$PWD/vim" "$HOME/.vim"
ln -s "$PWD/vim" "$HOME/.vim"
cp "$PWD/vim/vimrc" "$HOME/.vimrc"
ln -s "$PWD/vim/vimrc" "$HOME/.vimrc"
cp "$PWD/vim/gvimrc" "$HOME/.gvimrc"
ln -s "$PWD/vim/gvimrc" "$HOME/.gvimrc"

cp "$PWD/zsh" "$HOME/.zsh"
ln -s "$PWD/zsh" "$HOME/.zsh"
cp "$PWD/zshrc" "$HOME/.zshrc"
ln -s "$PWD/zshrc" "$HOME/.zshrc"

cp "$PWD/gitconfig" "$HOME/.gitconfig"
ln -s "$PWD/gitconfig" "$HOME/.gitconfig"

cp "$PWD/gitignore" "$HOME/.gitignore"
ln -s "$PWD/gitignore" "$HOME/.gitignore"

cp "$PWD/rspec" "$HOME/.rspec"
ln -s "$PWD/rspec" "$HOME/.rspec"

git clone git@git.wincent.com:command-t.git "$HOME/.vim/bundle"
git clone git@github.com:altercation/vim-colors-solarized.git "$HOME/.vim/bundle"
git clone git@github.com:tpope/vim-commentary.git "$HOME/.vim/bundle"
git clone git@github.com:scrooloose/nerdtree.git "$HOME/.vim/bundle"
git clone git@github.com:thoughtbot/vim-rspec.git "$HOME/.vim/bundle"
