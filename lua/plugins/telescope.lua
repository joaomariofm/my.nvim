local telescope = require('telescope.builtin')

local function config_search(func_name, search_opts)
	return function()
		require('telescope.builtin')[func_name]({
			prompt_prefix = ' search: ',
			find_command = search_opts,
			file_ignore_patterns = { 'node_modules', '.git', '.lock' },
		})
	end
end

vim.keymap.set('n', '<leader>ff', config_search('find_files', { 'rg', '--files', '--hidden', '-uu' }), {})
vim.keymap.set('n', '<leader>fg', config_search('live_grep', { 'rg', '--hidden', '-uu' }), {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})
