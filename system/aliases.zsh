# general
alias ls='ls -Gla'
alias ll='ls -hl'
alias history='history 1'
alias fh='history | grep'

# ruby and development
alias rc='bundle exec rails console'
alias b='bundle'
alias sam='bundle install; yarn install; foreman start'

alias vim=nvim #'mvim -v --servername VIM'
alias vimed='cd ~/.dotfiles; vim ~/.config/nvim/init.vim'
alias dot='cd ~/.dotfiles'

function replace() {
  rg -l "$1" | xargs sed -i '' -E 's/'$1'/'$2'/g'
}

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
