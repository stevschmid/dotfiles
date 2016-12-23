# general
alias ls='ls -Gla'
alias ll='ls -hl'
alias history='history 1'
alias fh='history | grep'
alias ag='ag --pager less'

# ruby and development
alias rc='rails console'
alias qq='touch tmp/restart.txt'
alias b='bundle'

alias vim=nvim #'mvim -v --servername VIM'
alias vimed='cd ~/.dotfiles; vim ~/.config/nvim/init.vim ~/.config/nvim/mappings.vim ~/.config/nvim/plugins.vim'
alias ga='git add'
alias gap='git add -p .'

function findfolder() {
  echo `mdfind -onlyin $1 kind:folder $2 | grep -E "\/$2$" | awk '{ print length($0) " " $0; }' | sort -n | head -n1 | cut -d ' ' -f 2-`
}

function fd() {
  local dir=`findfolder . $1`
  if [[ $dir ]]; then
    echo "cd to $dir"
    cd $dir
  else
    echo "Not found: $1"
  fi
}

function pd() {
  local dir=`findfolder ~/projects $1`
  if [[ $dir ]]; then
    echo "cd to $dir"
    cd $dir
  else
    echo "Not found: $1"
  fi
}
