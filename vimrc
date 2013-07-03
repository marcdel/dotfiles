" Pathogen
" call pathogen#runtime_append_all_bundles()
" call pathogen#helptags()

" -----------------------------
" Vundle
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
Bundle 'wincent/Command-T'

" General bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'scrooloose/nerdtree'

" Ruby bundles
" Bundle 'vim-ruby/vim-ruby'
" Bundle 'thoughtbot/vim-rspec'
Bundle 'ecomba/vim-ruby-refactoring'
" Bundle 'vim-scripts/ruby-matchit'
Bundle 'tpope/vim-endwise'
" Bundle 'tpope/vim-rake'
" Bundle 'tpope/vim-rails'

syntax enable
filetype plugin indent on
set background=dark
colorscheme solarized

set nocompatible 
set encoding=utf-8
set showcmd                        " information about the current command
set relativenumber                 " line numbers based on cursor position

" Whitespace
set nowrap                         " don't wrap lines
set tabstop=2 shiftwidth=2         " a tab is two spaces
set expandtab                      " use spaces, not tabs
set backspace=indent,eol,start     " backspace through everything in insert mode

" Searching
set hlsearch                       " highlight matches
set incsearch                      " incremental searching
set ignorecase                     " searches are case insensitive...
set smartcase                      " ... unless they contain at least one capital letter

" Autocomplete
set complete=.,b,u,]               " searches in current file, buffers, and tags
set wildmode=longest,list:longest  "shell style autocomplete

" Indentation
set smartindent
set autoindent

" Numbers
set nrformats=                     " treat all numbers as decimal (numbers with leading zeros normally treated as octal, etc)

" Leader
let mapleader = ','
let maplocalleader = '\\'

" Custom Mappings
nnoremap <leader><leader> <c-^>

" Rspec
let g:rspec_command = "!rspec --drb {spec}"

" NERDTree
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q 
nnoremap <leader>d :NERDTreeToggle<cr>

" Rspec.vim mappings
map <leader>r :call RunCurrentSpecFile()<cr>
map <leader>s :call RunNearestSpec()<cr>
map <leader>l :call RunLastSpec()<cr>

" supertab tab completion
inoremap <Tab> <C-P>

" ruby-refactoring bindings
nnoremap <leader>rap  :RAddParameter<cr>
nnoremap <leader>rcpc :RConvertPostConditional<cr>
nnoremap <leader>rel  :RExtractLet<cr>
vnoremap <leader>rec  :RExtractConstant<cr>
vnoremap <leader>relv :RExtractLocalVariable<cr>
nnoremap <leader>rit  :RInlineTemp<cr>
vnoremap <leader>rrlv :RRenameLocalVariable<cr>
vnoremap <leader>rriv :RRenameInstanceVariable<cr>
vnoremap <leader>rem  :RExtractMethod<cr>

" Dont press these ok
map <left> <nop>
map <right> <nop>
map <up> <nop>
map <down> <nop>
