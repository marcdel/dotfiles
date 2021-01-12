let mapleader = " "

set title               		" Set iTerm window title to current filename
set number              		" Line numbers
set autoread            		" Update files changed outside of vim if they haven't been edited
set mouse=a             		" Scroll like a normal window in nvim
set backspace=indent,eol,start     	" backspace through everything in insert mode
set foldmethod=syntax
set nofoldenable
set splitright 				" Open new splits to the right
set splitbelow 				" and below
set hidden 				" Allow modified buffers to be hidden (argdo is v useless otherwise)
set switchbuf=usetab 	 		" Try to jump to an existing split/tab if the buffer is already open

" Theme
set background=dark
" colorscheme is set in vimrc.packages

" vim-gitgutter
highlight! link SignColumn LineNr

" Save everytime text is changed
autocmd TextChanged,TextChangedI,InsertLeave <buffer> update

" Keybindings
nmap <leader>ev :tabe ~/.vimrc<CR>
nmap <leader>sv :source ~/.vimrc<CR>
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
nmap <leader>p "0p

" Puts a .vim-session file in your current working directory
" This file should be in my ~/.gitignore to ignore it globally
nmap <leader>ms :mksession! <C-R>=getcwd()<CR>/.vim_session<CR>
nmap <leader>ss :source <C-R>=getcwd()<CR>/.vim_session<CR>

" Elixir specific bindings
autocmd Filetype elixir nmap <leader>f :Dispatch! mix format<CR>
autocmd Filetype elixir nmap <leader>r :Dispatch! mix test<CR>

" vim-test config
let test#strategy = "dispatch"
let g:dispatch_quickfix_height=15
nmap <leader>tn :TestNearest<CR>
nmap <leader>tf :TestFile<CR>
nmap <leader>ta :TestSuite<CR>
nmap <leader>tl :TestLast<CR>
nmap <leader>tv :TestVisit<CR>

" vim-projectionist
nmap <leader>tt :A<CR>

" fzf config
let g:fzf_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R'

nmap <leader>o :GFiles<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>k :BTags<CR>
nmap <leader>g :GFiles?<CR>
nmap <Leader>/ :RG<CR>
nmap <Leader>? :RG <C-R><C-W><CR> 	 " Search for the word under the cursor
vmap <Leader>/ "fy:RG <C-R>f<CR> 	 " Search for the highlighted text (yank it in register f and then paste from register f)

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

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

" Coc.vim

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Remap keys for gotos
nmap <silent> gd :call CocAction('jumpDefinition', 'tab drop')<CR>
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
