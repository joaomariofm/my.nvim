local ts = require('nvim-treesitter')

ts.setup({
  install_dir = vim.fn.stdpath('data') .. '/site',
})

ts.install({
  'vim',
  'vimdoc',
  'lua',
  'markdown',
  'markdown_inline',
  'astro',
  'css',
  'html',
  'typescript',
  'javascript',
  'rust',
  'toml',
})

vim.api.nvim_create_autocmd('FileType', {
  desc = 'Enable treesitter highlighting',
  callback = function(event)
    pcall(vim.treesitter.start, event.buf)
  end,
})
