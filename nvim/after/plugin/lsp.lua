local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'pylsp',
    'gopls',
    'rust_analyzer',
    'eslint',
    'bashls',
})

lsp.setup()
