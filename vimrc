" -----------------------------
" Install Vundle
" -----------------------------
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone git@github.com:gmarik/vundle.git ~/.vim/bundle/vundle
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" -----------------------------
" Control fucking P
" -----------------------------
Bundle 'kien/ctrlp.vim'

" -----------------------------
" General bundles
" -----------------------------
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'

" -----------------------------
" Ruby bundles
" -----------------------------
Bundle 'vim-ruby/vim-ruby'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'tpope/vim-endwise'

" -----------------------------
" Basic settings
" -----------------------------
syntax enable
filetype plugin indent on
set background=dark
colorscheme solarized

" Set backup and swap directories.
" The double // makes it add the full path to filename
set backup
set backupdir=~/.tmp//
set dir=~/.tmp//

" -----------------------------
" Set Options
" -----------------------------
set nocompatible
set encoding=utf-8
set showcmd                        " information about the current command
set relativenumber                 " line numbers based on cursor position
set nowrap                         " don't wrap lines
set tabstop=2 shiftwidth=2         " a tab is two spaces
set expandtab                      " use spaces, not tabs
set backspace=indent,eol,start     " backspace through everything in insert mode
set hlsearch                       " highlight matches
set incsearch                      " incremental searching
set ignorecase                     " searches are case insensitive...
set smartcase                      " ... unless they contain at least one capital letter
set complete=.,b,u,]               " searches in current file, buffers, and tags
set wildmode=longest,list:longest  " shell style autocomplete
set smartindent                    " auto-indent on new line
set autoindent                     " copy indent from current line on new line
set nrformats=                     " treat all numbers as decimal (numbers with leading zeros normally treated as octal, etc)

" -----------------------------
" Leader
" -----------------------------
let mapleader = ','
let maplocalleader = '\\'

" -----------------------------
" Custom Mappings
" -----------------------------
inoremap <Tab> <C-P>
nnoremap <leader><leader> <c-^>   " I don't remember what this is. Probably something to do with tmux.
nnoremap <leader>t :CtrlP<cr>

" Dont press these ok
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
