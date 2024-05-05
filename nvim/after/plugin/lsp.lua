local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'gopls',
    'rust_analyzer',
    'eslint',
    'bashls',
    'clangd',
  },
  handlers = {
    lsp.default_setup,
  },
})

require('lspconfig').pylsp.setup({
    on_attach = function(client, bufnr)
    end
})

