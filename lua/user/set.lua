vim.g.mapleader = ' '

-- transparency cases
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = 'none' })

-- directories listing style
vim.g.netrw_liststyle = 3

-- allow yank to system clipboard
vim.opt.clipboard = 'unnamedplus'

-- file structure
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true

-- spell language
vim.opt.spelllang = 'pt,en'
