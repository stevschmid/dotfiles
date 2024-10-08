cask_args appdir: '/Applications'

tap 'homebrew/services'
tap 'homebrew/cask'
tap 'homebrew/cask-fonts'
tap 'wez/wezterm'

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
cask 'vlc'
cask 'font-input'
# cask 'sourcetree'

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
brew 'tmux' # swallow key issue? https://github.com/tmux/tmux/issues/2705
brew 'zsh'
brew 'ripgrep'
brew 'ag' # ff
brew 'clang-format'
brew 'rename'
brew 'yarn'
brew 'gpg'
brew 's3cmd'
brew 'python'
brew 'hub'
brew 'graphicsmagick'
brew 'overmind'
brew 'lazygit'

# services
brew 'postgresql@10', restart_service: :changed, start_service: true
brew 'dnsmasq', restart_service: :changed, start_service: true
brew 'rabbitmq', restart_service: :changed, start_service: true
brew 'nginx', restart_service: :changed, start_service: true
brew 'redis', restart_service: :changed, start_service: true

# yabai / skhd (untested brewfile additions)
brew 'koekeishiya/formulae/yabai', restart_service: :changed, start_service: true
brew 'koekeishiya/formulae/skhd', restart_service: :changed, start_service: true

