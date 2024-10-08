return {
 'tpope/vim-fugitive', -- Gblame all day every day
 'tpope/vim-rhubarb', -- Enables :Gbrowse from fugitive.vim to open GitHub URLs
 'tpope/vim-surround', -- Brackets for the masses
 'preservim/vimux',
 'tpope/vim-repeat', -- Plugs dig the dot
 'tpope/vim-unimpaired', -- Helpful mappings
 'tpope/vim-commentary', -- Comment dat baby out
 'tpope/vim-abolish', -- Substitution
 'tpope/vim-endwise', -- def; end
 'simnalamburt/vim-mundo', -- Nilsi was right all along, super helpful
 'jremmen/vim-ripgrep', -- RIP ag
 'godlygeek/tabular', -- align using :Tab
 'ntpeters/vim-better-whitespace',

 {
   'github/copilot.vim',
   lazy = false,
   init = function()
     vim.g.copilot_filetypes = { yaml = true, markdown = true }
   end,
   keys = {
     { '<C-j>', '<Plug>(copilot-next)' },
     { '<C-k>', '<Plug>(copilot-previous)' },
   },
 },
}
