vim.g.mapleader = " "

vim.cmd.colorscheme "catppuccin"
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.shiftwidth = 2

vim.opt.autoindent = true

vim.opt.spell = false
_spell_control = false
vim.opt.spelllang = "pt_br"


vim.keymap.set("n", "<leader>s", function()
	_spell_control = not _spell_control
	vim.opt.spell = _spell_control
end)
