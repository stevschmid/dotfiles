local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap('n', '<Leader>t', ':TestNearest<CR>', opts)
keymap('n', '<Leader>T', ':TestFile<CR>', opts)
keymap('n', '<Leader>l', ':TestLast<CR>', opts)
keymap('n', '<Leader>g', ':TestVisit<CR>', opts)

keymap('n', '<Leader>q', ':Bdelete<CR>', opts) -- bbye buffer delete (keep layout)

keymap('n', '<F5>', ':MundoToggle<CR>', opts)
keymap('n', '<F6>', ':TagbarToggle<CR>', opts)

-- fix mistyping
vim.cmd(':command WQ wq')
vim.cmd(':command Wq wq')
vim.cmd(':command W w')
vim.cmd(':command Q q')

-- neo-tree
keymap('n', '<C-n>', ':Neotree filesystem reveal toggle<CR>', opts)

-- fzf.vim
keymap('n', '<C-p>', ':Files<CR>', opts)
keymap('n', '<Leader>b', ':Buffers<CR>', opts)

-- gitsigns change base
keymap('n', '<Leader>dm', ':Gitsigns change_base master<CR>', opts)
keymap('n', '<Leader>db', ':Gitsigns change_base HEAD<CR>', opts)

-- make sure <C-c> behaves exactly like <Esc> (so plugin triggers work)
keymap('i', '<C-c>', '<Esc>')

-- copilot
keymap('i', '<C-j>', '<Plug>(copilot-next)')
keymap('i', '<C-k>', '<Plug>(copilot-previous)')

-- harpoon
keymap('n', '<leader>a', ':lua require("harpoon.mark").add_file()<CR>')
keymap('n', '<leader>A', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')

keymap('n', '<leader>1', ':lua require("harpoon.ui").nav_file(1)<CR>')
keymap('n', '<leader>2', ':lua require("harpoon.ui").nav_file(2)<CR>')
keymap('n', '<leader>3', ':lua require("harpoon.ui").nav_file(3)<CR>')
keymap('n', '<leader>4', ':lua require("harpoon.ui").nav_file(4)<CR>')

-- oil.nvim
keymap('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
