# Path to your oh-my-zsh configuration.
ZSH=$HOME/.zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# export ZSH_THEME="prose"
export ZSH_THEME="prose"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Disable all auto-correct
unsetopt correct_all

# Disable individual auto-corrections
alias heroku='nocorrect heroku'

# Aliases
alias be='bundle exec'

# Allow sending ctrl-s in terminal
alias vim="stty stop '' -ixoff ; vim"
ttyctl -f

ctags=/usr/local/bin/ctags

# recommended by brew doctor
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin'
# export PATH='~/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin'

eval "$(rbenv init -)"
