execute pathogen#infect()

" -----------------------------
" Basic settings
" -----------------------------
syntax on
filetype plugin indent on

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
set laststatus=2                   " always show the status line
set hidden                         " allow modified buffers to be hidden
set wildignore=*.o,*.obj,.git,node_modules/**,**/node_modules/**,_build/**,deps/**

set background=dark
colorscheme solarized

let mapleader = ","

let g:ctrlp_map = "<leader>p"
if executable('rg')
  let g:ctrlp_user_command = 'rg --files  %s'
endif

nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>

map <C-n> :NERDTreeToggle<CR>

nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

nmap <leader>bt :!ctags -R .<cr>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:syntastic_elixir_checkers = ['syntastic-checkers-elixir']
