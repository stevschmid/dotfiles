return {
  'christoomey/vim-tmux-navigator',
  'preservim/tagbar',
  {
    'ThePrimeagen/harpoon',
    requires = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('harpoon').setup({
        global_settings = {
          mark_branch = true,
        },
      })
    end,
  },

  {
    'stevearc/oil.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('oil').setup()
    end,
  },

  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('neo-tree').setup({
        enable_git_status = true,
        default_component_configs = {
          indent = {
            padding = 1,
            with_expanders = false,
          },
          icon = {
            -- folder_closed = "▸",
            -- folder_open = "▾",
            -- folder_empty = "▹",
            default = " ",
          },
          modified = {
            symbol = "[+]",
            highlight = "NeoTreeModified",
          },
          name = {
            trailing_slash = false,
            use_git_status_colors = true,
            highlight = "NeoTreeFileName",
          },
          git_status = {
            symbols = {
              added = "+",
              deleted = "-",
              modified = "M",
              renamed = "➜",
              untracked = "★",
              ignored = "◌",
              unstaged = "✗",
              staged = "✓",
              conflict = "!",
            },
          },
        },
        window = {
          width = 60,
        },
      })
    end,
  },

  { 'junegunn/fzf', run = ':call fzf#install()' },
  {
    'junegunn/fzf.vim',
    config = function()
      vim.cmd("let $FZF_DEFAULT_COMMAND = 'rg --files'")
    end,
  },
}
