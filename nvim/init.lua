local opt = vim.opt
local keymap = vim.keymap
opt.shell = 'zsh'

-- Options --
opt.number = true
opt.backup = false
opt.swapfile = false
opt.smartindent = true
opt.showmatch = true
opt.matchtime = 1
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.wrapscan = true
opt.virtualedit = "onemore"
-- copy & paste --
opt.clipboard = 'unnamedplus'
opt.scrolloff = 3
opt.listchars = {tab = '>-', trail = '*'}
opt.diffopt = {
  "vertical",
  "internal",
  "closeoff",
  "hiddenoff",
  "filler",
  "indent-heuristics",
  "algorithm:histogram"
}
-- opt.whichwrap

-- keymaps --
local noresil = { noremap = true, silent = true }
keymap.set('i', 'jj', '<esc>', noresil)
keymap.set('n', 'j', 'gj', noresil)
keymap.set('n', 'k', 'gk', noresil)
keymap.set('n', '+', '<C-a>', noresil)
keymap.set('n', '-', '<C-x>', noresil)
keymap.set('n', 'Y', 'y$', noresil)
-- type semicolon to enter the command mode
keymap.set('n', ';', ':', { noremap = true })
-- move to head or tail of current line
vim.g.mapleader = ' '
keymap.set({ 'n', 'v' }, '<leader>a', '^', noresil)
keymap.set({ 'n', 'v' }, '<leader>f', '$', noresil)
keymap.set({ 'n', 'v' }, '<leader>gg', 'G', noresil)
keymap.set('v', 'i', '<Esc>', noresil)
-- type z+Enter to move current line to the top of screen, keeping cursor position
keymap.set('n', 'z<CR>', 'zt', noresil)
-- turn off highlight
keymap.set('n', '<leader><leader>', ':nohl<CR>', noresil)
-- exit terminal insert mode
keymap.set('t', '<esc>', '<C-\\><C-n>', noresil)
-- qw to do wq
vim.cmd('cnoreabbrev qw wq')
vim.api.nvim_create_user_command('EditSettings', 'edit $MYVIMRC', {})
vim.cmd('cnoreabbrev config EditSettings')
