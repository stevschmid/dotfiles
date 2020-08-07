# search for file name
function ff { /usr/local/bin/ag -g $1 }

function ag {
  echo "riPepperonis. Use rg instead";
}

function temps {
  ~/.dotfiles/scripts/temps $1
}

function weather {
  curl "wttr.in/$1"
}

unalias gm
unalias gs
