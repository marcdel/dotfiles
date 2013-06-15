" Setting up Vundle
    let installVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle..."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone git@github.com:gmarik/vundle.git ~/.vim/bundle/vundle
        let installVundle=0
    endif
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'

    " General bundles
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'wincent/Command-T'
    Bundle 'tpope/vim-fugitive'

    " Ruby bundles
    Bundle 'vim-ruby/vim-ruby'
    " Bundle 'ecomba/vim-ruby-refactoring'
    " Bundle 'tpope/vim-endwise'
    " Bundle 'tpope/vim-rake'
    " Bundle 'tpope/vim-rails'

    if installVundle == 0
        echo "Installing Bundles..."
        echo ""
        :BundleInstall
    endif
" Setting up Vundle


syntax enable
set background=dark
colorscheme solarized

set nocompatible                " no compatibility with legacy vi
set encoding=utf-8
set showcmd                     " display incomplete commands
set number

" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode

" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Numbers
set nrformats=                  " treat all numbers as decimal (numbers with leading zeros normally treated as octal, etc)

" Leader
let mapleader = ','
let maplocalleader = '\\'

" Toggle line numbers with ,n
nnoremap <leader>n :setlocal number!<cr>

" Toggle NERDTree with ,d
nnoremap <leader>d :NERDTreeToggle<cr>

" Rspec.vim mappings
map <leader>r :call RunCurrentSpecFile()<cr>
map <leader>s :call RunNearestSpec()<cr>
map <leader>l :call RunLastSpec()<cr>

" Disable arrow keys in normal(n), insert(i), and visual(v) modes
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop> 

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop> 

vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>
