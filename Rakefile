require 'pathname'
require 'fileutils'

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

task :brew do
  sh 'brew bundle'
end

task :gems do
  sh 'bundle install'
end

namespace :bootstrap do
  desc 'Bootstrap vim'
  task :vim do
    sh "vim -c ':BundleInstall' -c ':quitall'"
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

    sh "cp #{DOTFILES}/prezto/custom_prompt #{dir}/modules/prompt/functions/prompt_custom_setup"

    # fzf
    sh "/usr/local/opt/fzf/install"
  end

  desc 'Bootstrap dev'
  task :dev do
    sh './dev-setup.sh'
  end

  desc 'Bootstrap macOS'
  task :macos do
    sh './mac/macos.sh'
  end

  desc 'Bootstrap nginx/dnsmasq'
  task :nginx do
    sh './nginx/install.sh'
  end
end
