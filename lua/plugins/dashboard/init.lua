local function setup ()
  require('dashboard').setup {}
end

return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = setup,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}

