local toggleterm = require('toggleterm')

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true})
vim.api.nvim_set_keymap('t', '<C-l>', '<Cmd>wincmd l<CR>', {noremap = true})
vim.api.nvim_set_keymap('t', '<C-h>', '<Cmd>wincmd h<CR>', {noremap = true})

toggleterm.setup({
	size = 20,
	open_mapping = [[<C-j>]],
	direction = 'horizontal',

	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	close_on_exit = true,
	shell = vim.o.shell,
})
