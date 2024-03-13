require('nvim-treesitter.configs').setup {
  ensure_installed = {
		'c',
		'javascript',
		'typescript',
		'vim',
		'vimdoc',
		'query',
		'css',
	},
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
