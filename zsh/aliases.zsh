# search for file name
function ff { ag -g $1 }

# speed up rbenv init by adding --no-rehash
function rbenv {
  if [ "$1" = 'init' ]
  then
    set -- $* --no-rehash
  fi
  command rbenv $*
}
