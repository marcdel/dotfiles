if filereadable(expand("~/.vimrc.packages"))
  source ~/.vimrc.packages
endif

if filereadable(expand("~/.vimrc.coc"))
  source ~/.vimrc.coc
endif
