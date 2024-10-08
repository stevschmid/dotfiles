return {
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end,
  },

  {
    'moll/vim-bbye', -- delete buffers (close files) without closing your windows or messing up your layout
    keys = {
      {'<Leader>q', ':Bdelete<CR>'},
    },
  },
}

