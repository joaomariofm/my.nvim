local function zen_mode()
	require('zen-mode').toggle({
		window = {
			width = .55,
			height = .90,
			options = {
				number = false,
				relativenumber = false
			}
		}
	})
end

vim.keymap.set( 'n', '<leader>z', zen_mode, { noremap = true, silent = true })
