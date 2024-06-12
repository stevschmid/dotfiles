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

# https://github.com/rails/rails/issues/38560
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# https://github.com/basecamp/solid_queue/issues/145
# https://github.com/ged/ruby-pg/issues/538#issuecomment-1591629049
export PGGSSENCMODE="disable"
