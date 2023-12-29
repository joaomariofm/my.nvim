vim.g.mapleader = " "

-- that theme
vim.cmd.colorscheme "catppuccin"

-- transparency cases
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "TermCursor", { bg = "none" })
vim.api.nvim_set_hl(0, "TermCursorNC", { bg = "none" })


-- directories listing style
vim.g.netrw_liststyle = 3

-- allow yank to system clipboard
vim.opt.clipboard = "unnamedplus"

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true

vim.opt.spell = false
_spell_control = false
vim.opt.spelllang = "pt_br"

vim.keymap.set("n", "<leader>s", function()
	_spell_control = not _spell_control
	vim.opt.spell = _spell_control
end)


