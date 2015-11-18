# general
alias ls='ls -Gla'
alias ll='ls -hl'
alias history='history 1'
function ff { find . -iname "*$1*" }
alias fh='history | grep'

# ruby and development
alias rc='rails console'
alias qq='touch tmp/restart.txt'
alias b='bundle'

alias vim=nvim #'mvim -v --servername VIM'
alias vimed='cd ~/.dotfiles; vim ~/.config/nvim/init.vim ~/.config/nvim/mappings.vim ~/.config/nvim/plugins.vim'
alias ga='git add'
alias gap='git add -p .'
