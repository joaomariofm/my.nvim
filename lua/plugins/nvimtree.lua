vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.keymap.set('n', '<C-t>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 37,
  },
  renderer = {
    group_empty = true,
		icons = {
			glyphs = {
				git = {
					unstaged = "",
				},
			},
		},
  },
  filters = {
    dotfiles = true,
  },
	actions = {
		open_file = {
			window_picker =  {
				enable = false,
			},
		},
	},
})
