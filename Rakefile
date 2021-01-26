require 'pathname'
require 'fileutils'

INSTALL_RUBY_VERSION = '2.5.1'

DOTFILES = File.join(File.dirname(Pathname.new(__FILE__).realpath))

desc 'Link dotfiles'
task :link do
  HOME = ENV['HOME']
  Dir.chdir(DOTFILES)

  # Symlink *.symlink files
  Dir.glob(['**/*.symlink', '**/*.dsymlink']).each do |f|
    dir, base = Pathname.new(f).split
    name_without_symlink = base.basename('.*')
    if base.extname == '.dsymlink'
      # symlink in hidden directory
      fulldir = File.join(HOME, ".#{dir}")
      FileUtils.mkdir_p fulldir
      dst = File.join(fulldir, name_without_symlink)
    else
      # symlink for hidden file
      dst = File.join(HOME, ".#{name_without_symlink}")
    end

    src = File.join(DOTFILES, f)
    puts "Symlink #{dst}"
    FileUtils.ln_sf(src, dst)
  end
end

desc 'Brew'
task :brew do
  sh 'brew update && brew bundle && brew upgrade'
end

desc 'Gems'
task :gems do
  sh 'bundle install'
end

namespace :bootstrap do
  desc 'Bootstrap vim'
  task :vim do
    sh "curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    sh "nvim -c ':PlugInstall'"
  end

  desc 'Bootstrap zsh'
  task :zsh do
    # prezto
    dir = File.expand_path('~/.zprezto')
    puts dir
    if Dir.exists?(dir)
      sh "cd #{dir} && git pull && git submodule update --init --recursive"
    else
      sh "git clone --recursive git@github.com:sorin-ionescu/prezto.git #{dir}"
    end

    FileUtils.ln_sf("#{DOTFILES}/prezto/custom_prompt", "#{dir}/modules/prompt/functions/prompt_custom_setup")

    # fzf
    sh '/usr/local/opt/fzf/install'

    # change default shell
    # so iTerm2 loads zshrc before tmux
    # zshrc sets $TERM
    # ($TERM outside of tmux should be *256colors)
    # sh 'chsh -s /bin/zsh'
    # which homebrew m1 compat this would be /opt/homebrew
    # still needed?

    # fix compdump/slow zsh loading on macOS sierra
    # sh 'compaudit | xargs chmod g-w'
    # meh compaudit doesn't output anything on high sierra
  end

  desc 'Bootstrap macOS'
  task :macos do
    sh './mac/macos.sh'
  end

  desc 'Bootstrap dev nginx/dnsmasq'
  task :dev do
    sh './nginx/install.sh'
    sh 'sudo brew services restart dnsmasq'
    sh 'sudo brew services restart nginx'
    sh 'npm install -g prettier'
  end

  desc 'Bootstrap rbenv'
  task :ruby do
    sh "rbenv install #{INSTALL_RUBY_VERSION}"
    sh "rbenv global #{INSTALL_RUBY_VERSION}"
    sh 'rbenv rehash'
    # sh "gem install bundler" Make sure to setup terminal (zsh, rbenv init etc.)
  end
end
