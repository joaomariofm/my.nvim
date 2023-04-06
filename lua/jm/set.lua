vim.g.mapleader = " "

vim.cmd.colorscheme "catppuccin"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.shiftwidth = 2

vim.opt.autoindent = true

vim.opt.spell = true
_spell_control = true
vim.opt.spelllang = "pt_br"


vim.keymap.set("n", "<leader>s", function()
	_spell_control = not _spell_control
	vim.opt.spell = _spell_control
end)
