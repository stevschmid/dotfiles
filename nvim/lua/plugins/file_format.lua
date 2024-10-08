return {
  {
    'sheerun/vim-polyglot', -- A solid language pack for Vim.
    init = function()
      -- disable auto-indent, it sometimes overwrites my shiftwidth 2 to 4
      vim.g.polyglot_disabled = { 'autoindent' }
    end,
  },

  'vim-test/vim-test', -- Run specs
  { 'tpope/vim-rails', ft = 'ruby' }, -- only load when opening Ruby file
  'tpope/vim-projectionist', -- for vim-rake
  'tpope/vim-rake',
  'ziglang/zig.vim', -- zig is AMAZING
}
