vim.g.mapleader = " "

-- Basic settings
vim.opt.updatetime = 300 -- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience.
vim.o.encoding = 'utf-8'
vim.o.backspace = 'indent,eol,start' -- backspace works on every char in insert mode
vim.o.completeopt = 'menuone,noselect'
vim.o.history = 1000
vim.o.startofline = true
vim.o.mouse = nil -- disable mouse so select+copy works

vim.o.swapfile = false -- do not use swap file
vim.o.undodir = vim.fn.expand('~/.vim/undo')
vim.o.undofile = true

vim.cmd('set clipboard^=unnamed') -- shared clipbard

-- White characters
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.tabstop = 2 -- 1 tab = 2 spaces
vim.o.shiftwidth = 2 -- indentation rule
vim.o.formatoptions = 'qnj1' -- q  - comment formatting; n - numbered lists; j - remove comment when joining lines; 1 - don't break after one-letter word
vim.o.expandtab = true -- expand tab to spaces

-- Mapping waiting time
vim.o.timeout = false
vim.o.ttimeout = true
vim.o.ttimeoutlen = 100

-- Display
vim.o.showmatch  = true -- show matching brackets
vim.o.synmaxcol = 300 -- stop syntax highlight after x lines for performance
vim.o.wrap = false

-- Sidebar
vim.o.number = true -- line number on the left
vim.o.numberwidth = 3 -- always reserve 3 spaces for line number
vim.o.signcolumn = 'yes' -- keep 1 column for coc.vim  check
vim.o.relativenumber = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Color scheme
vim.o.termguicolors = true

-- https://github.com/neovim/neovim/issues/23590#issuecomment-1911925029
-- HUGE IMPACT: Address slow down when search is active
vim.cmd('hi! link CurSearch Search')

-- Strip trailing spaces on save
vim.cmd([[
autocmd BufWritePre * :%s/\s\+$//e
]])

-- vim-test -> vimux
vim.g['test#strategy'] = 'vimux'
vim.g['test#echo_command'] = 0 -- do not echo command
vim.g['test#preserve_screen'] = 1 -- do not clear

