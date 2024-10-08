return {
  'christoomey/vim-tmux-navigator',
  'preservim/tagbar',
  {
    'ThePrimeagen/harpoon',
    requires = {
      'nvim-lua/plenary.nvim',
    },
  },
  'stevearc/oil.nvim',

  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    }
  },
  { 'junegunn/fzf', run = ':call fzf#install()' },
  'junegunn/fzf.vim',
}
