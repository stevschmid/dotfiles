export LC_ALL=en_US.UTF-8
export DISABLE_SPRING=1 # SPRING – NOT EVEN ONCE
export SOCKET_DIR=/tmp/
export HOMEBREW_NO_ANALYTICS=1
# https://github.com/neovim/neovim/issues/2048
# does not work anymore, wait for new build (latest comments)
# export TERMINFO="$HOME/.terminfo" 

# Enable Erlang20+ history
export ERL_AFLAGS="-kernel shell_history enabled"
touch ~/.iex_history
