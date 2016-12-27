cask_args appdir: '/Applications'

tap 'homebrew/versions'
tap 'homebrew/services'
tap 'caskroom/cask'
tap 'caskroom/fonts'
brew 'mas'

# neovim
tap 'neovim/homebrew-neovim'
tap 'universal-ctags/universal-ctags'
brew 'neovim'
brew 'universal-ctags', args: ['HEAD']

# cask
cask 'google-chrome'
cask 'iterm2'
cask 'hammerspoon'
cask 'slack'
cask 'smoothmouse' # not giving up on you yet ;_;
cask 'sourcetree'
cask 'vagrant'
cask 'virtualbox'
cask 'steam'
cask 'spotify'
cask 'vlc'
cask 'bettertouchtool'
cask 'font-fira-code'

# app store
mas 'Pixelmator', id: 407963104
mas 'Tweetbot', id: 557168941

# brew
brew 'elixir'
brew 'fzf'
brew 'git'
brew 'imagemagick'
brew 'rbenv'
brew 'nodenv'
brew 'pstree'
brew 'reattach-to-user-namespace'
brew 'the_silver_searcher'
brew 'tig'
brew 'tmux'
brew 'zsh'

# services
brew 'postgresql', restart_service: :changed, start_service: true
brew 'dnsmasq', restart_service: :changed, start_service: true
brew 'rabbitmq', restart_service: :changed, start_service: true
brew 'nginx', restart_service: :changed, start_service: true
brew 'redis', restart_service: :changed, start_service: true
