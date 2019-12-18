let mapleader = " "

set cursorline          " Highlight current line
set cursorcolumn        " Highlight current column (this might be too much 😬)
set title               " Set iTerm window title to current filename
set number              " Line numbers
set autoread            " Update files changed outside of vim if they haven't been edited
set mouse=a             " Scroll like a normal window in nvim

" Save everytime text is changed
autocmd TextChanged,TextChangedI,InsertLeave <buffer> update

" Keybindings
nmap <leader>ev :tabe ~/.vimrc<CR>
nmap <leader>sv :source $MYVIMRC<CR>
nmap <leader>1 :NERDTreeToggle<CR>
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
nmap <leader><Space> :bp<cr>
if has('nvim')
  " Use escape to exit insert mode in terminal buffer
  tmap <ESC> <C-\><C-n>
endif

" Elixir specific bindings
autocmd Filetype elixir nmap <leader>f :!mix format<CR>
autocmd Filetype elixir nmap <leader>r :T mix test<CR>

" Rust specific bindings
autocmd Filetype rust nmap <leader>f :!cargo fmt<CR>
autocmd Filetype rust nmap <leader>r :T cargo run<CR>

" neoterm config
let g:neoterm_default_mod = 'belowright'
let g:neoterm_size=16
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
let g:ctrlp_use_caching = 0

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

