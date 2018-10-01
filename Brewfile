cask_args appdir: '/Applications'

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
cask 'firefox'
cask 'slack'
# cask 'smoothmouse' # we had helluva time buddy ;_;
cask 'virtualbox'
cask 'steam'
cask 'spotify'
cask 'vlc'
cask 'font-input'
cask 'amethyst' # tiling manager

# app store
mas 'PDFScanner', id: 410968114

# brew
brew 'fzf'
brew 'git'
brew 'imagemagick'
brew 'rbenv'
brew 'node'
brew 'nodenv'
brew 'reattach-to-user-namespace'
brew 'tig'
brew 'tmux'
brew 'zsh'
brew 'ripgrep'
brew 'clang-format'
brew 'rename'
brew 'rust'
brew 'yarn'

# services
brew 'postgresql', restart_service: :changed, start_service: true
brew 'dnsmasq', restart_service: :changed, start_service: true
brew 'rabbitmq', restart_service: :changed, start_service: true
brew 'nginx', restart_service: :changed, start_service: true
brew 'redis', restart_service: :changed, start_service: true
