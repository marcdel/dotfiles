let mapleader = " "

set cursorline
set title
set number

set background=light
colorscheme solarized8
set termguicolors

" Save everytime text is changed
autocmd TextChanged,TextChangedI,InsertLeave <buffer> silent update

" Keybindings
nmap <leader>ev :tabe ~/.vimrc<cr>
nmap <leader>sv :source ~/.vimrc<cr>
nmap <leader>1 :NERDTreeToggle<CR>
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
if has('nvim')
  " Use escape to exit insert mode in terminal buffer
  tmap <ESC> <C-\><C-n>
endif

" neoterm config
let g:neoterm_default_mod = 'belowright'
" let g:neoterm_size=16
let g:neoterm_autoscroll = 1
let g:test#preserve_screen = 0

" vim-test config
let test#strategy = "neovim"
" let test#strategy = "neoterm"
nmap <leader>tn :TestNearest<CR>
nmap <leader>tf :TestFile<CR>
nmap <leader>ta :TestSuite<CR>
nmap <leader>tl :TestLast<CR>
nmap <leader>tv :TestVisit<CR>

" CtrlP config
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 1

" Typing is hard
command! Q q
command! Qall qall
command! QA qall
command! E e
command! W w
command! Wq wq

autocmd Filetype help nnoremap <buffer> q :q<CR>

" Spam jk to get into normal mode
imap jk <esc>
imap kj <esc>

if filereadable(expand("~/.vimrc.packages"))
  source ~/.vimrc.packages
endif

if filereadable(expand("~/.vimrc.coc"))
  source ~/.vimrc.coc
endif

if filereadable(expand("~/.vimrc.projectionist"))
  source ~/.vimrc.projectionist
endif

