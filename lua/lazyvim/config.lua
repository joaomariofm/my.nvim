-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
local lazyrepo = 'https://github.com/folke/lazy.nvim.git'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    '--branch=stable',
    lazyrepo,
    lazypath
  })
end

vim.opt.rtp:prepend(lazypath)

-- Leader keys config
require('user.leaders')

-- Setup lazy.nvim
require('lazy').setup({
  spec = { { import = 'plugins' } }
})
