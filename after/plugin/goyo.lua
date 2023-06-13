vim.keymap.set('n', '<C-g>', '', {
	callback = function()
		vim.api.nvim_command(":Goyo")
	end
})

