# general
alias ls='ls -Gla'
alias ll='ls -hl'
function ff { find . -iname "*$1*" }
alias fh='history | grep'

# ruby and development
alias rc='rails console'
alias qq='touch tmp/restart.txt'
alias b='bundle'

alias vim='mvim -v --servername VIM'
alias vimed='vim ~/.vimrc ~/.*.vim'
