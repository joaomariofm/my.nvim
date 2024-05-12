local lsp_zero = require('lsp-zero')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

mason.setup({})
mason_lspconfig.setup({
  handlers = {
    lsp_zero.default_setup,
  },
})
