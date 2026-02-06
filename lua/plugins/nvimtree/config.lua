vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.keymap.set('n', '<C-t>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>r', ':NvimTreeRefresh<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })

require('nvim-tree').setup({
  view = { width = 60 },
	git = { ignore = false },
  filters = { dotfiles = false },
  sort = { sorter = 'case_sensitive' },
	actions = { open_file = { window_picker =  { enable = true } } },
  renderer = { group_empty = true, icons = { glyphs = { git = { unstaged = "" } } } },
})

