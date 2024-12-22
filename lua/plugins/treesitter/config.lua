require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "vim",
    "vimdoc",
    "markdown",
    "markdown_inline",
    "astro",
    "css",
    "html",
    "typescript",
    "javascript"
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
})

vim.api.nvim_command('TSUpdate')
