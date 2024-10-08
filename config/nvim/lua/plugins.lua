-- vim: filetype=lua
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Helpful tools
  use 'tpope/vim-fugitive' -- Gblame all day every day
  use 'tpope/vim-rhubarb' -- Enables :Gbrowse from fugitive.vim to open GitHub URLs
  use 'tpope/vim-surround' -- Brackets for the masses
  use 'preservim/vimux'
  use 'tpope/vim-repeat' -- Plugs dig the dot
  use 'tpope/vim-unimpaired' -- Helpful mappings
  use 'tpope/vim-commentary' -- Comment dat baby out
  use 'tpope/vim-abolish' -- Substitution
  use 'tpope/vim-endwise' -- def; end
  use 'simnalamburt/vim-mundo' -- Nilsi was right all along, super helpful
  use 'jremmen/vim-ripgrep' -- RIP ag
  use { 'godlygeek/tabular' } -- align using :Tab
  use 'ntpeters/vim-better-whitespace'
  use 'github/copilot.vim'
  -- use 'ludovicchabant/vim-gutentags'

  -- Navigation
  use 'christoomey/vim-tmux-navigator'
  use 'preservim/tagbar'
  use({
    'ThePrimeagen/harpoon',
    -- branch = "harpoon2",
    requires = {
      'nvim-lua/plenary.nvim',
    },
  })

  use "stevearc/oil.nvim"

  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    }
  }
  use { 'junegunn/fzf', run = ':call fzf#install()' }
  use 'junegunn/fzf.vim'

  -- Display & Formatting
  -- Syntax highlighting themes cause slow down with active search
  -- Issue reported here https://github.com/neovim/neovim/issues/23590
  -- Workaround https://github.com/neovim/neovim/issues/23590#issuecomment-1911925029 (in settings.lua)
  use({
    'neanias/everforest-nvim',
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require('everforest').setup()
    end,
  })

  use 'lewis6991/gitsigns.nvim'
  use 'moll/vim-bbye' -- delete buffers (close files) without closing your windows or messing up your layout

  -- File Format Support
  use 'sheerun/vim-polyglot' -- A solid language pack for Vim.
  use 'vim-test/vim-test' -- Run specs
  use { 'tpope/vim-rails', ft = 'ruby' } -- only load when opening Ruby file
  use 'tpope/vim-projectionist' -- for vim-rake
  use 'tpope/vim-rake'
  use 'ziglang/zig.vim' -- zig is AMAZING

end)
