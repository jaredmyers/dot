-- ╭───────╮
-- │ MASON │
-- ╰───────╯
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'gopls',
        'jsonls',
        'lua_ls',
        'bashls',
        "rust_analyzer",
        "eslint",
        "clangd",
        "yamlls",
        "cmake",
        "dockerls",
	    "docker_compose_language_service",
        "pyright",
        "ruff_lsp",
    },
    --handlers = {
    --    lsp.default_setup,
    --},
})


local lsp_config = require("lspconfig")
--local lsp_defaults = lsp_config.util.default_config

--lsp_defaults.capabilities = vim.tbl_deep_extend('force', lsp_defaults.capabilities, require("cmp_nvim_lsp").default_capabilities())

--require("lspconfig.ui.windows").default_options.border = "single"

-- ╭─────────────╮
-- │ LSP BORDERS │
-- ╰─────────────╯
local border = {
    { '┌', 'FloatBorder' },
    { '─', 'FloatBorder' },
    { '┐', 'FloatBorder' },
    { '│', 'FloatBorder' },
    { '┘', 'FloatBorder' },
    { '─', 'FloatBorder' },
    { '└', 'FloatBorder' },
    { '│', 'FloatBorder' },
}

--local handlers = {
--    ['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
--    ['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
--}

--vim.diagnostic.config({float = {border= border}})

--  ╭──────────────────────────────────────────────────────────╮
--  │                         SERVERS                          │
--  ╰──────────────────────────────────────────────────────────╯

-- local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- ╭───────╮
-- │ GOPLS │
-- ╰───────╯
lsp_config.gopls.setup({
    -- capabilities = lsp_capabilities,
    --  on_attach = on_attach
})

-- ╭────────╮
-- │ JSONLS │
-- ╰────────╯
lsp_config.jsonls.setup({
    -- capabilities = lsp_capabilities,
    --  capabilities = require("cmp_nvim_lsp").default_capabilities(),
    --  on_attach = on_attach
})

-- ╭────────╮
-- │ LUA_LS │
-- ╰────────╯
lsp_config.lua_ls.setup({
    -- capabilities = lsp_capabilities,
    --  capabilities = require("cmp_nvim_lsp").default_capabilities(),
    --  on_attach = on_attach
})

-- ╭─────────╮
-- │ PYRIGHT │
-- ╰─────────╯
lsp_config.pyright.setup({
    -- capabilities = lsp_capabilities,
    --  capabilities = require("cmp_nvim_lsp").default_capabilities(),
    --  on_attach = on_attach
})

-- ╭──────╮
-- │ RUFF │
-- ╰──────╯
lsp_config.ruff_lsp.setup({
    -- capabilities = lsp_capabilities,
    --  capabilities = require("cmp_nvim_lsp").default_capabilities(),
    --  on_attach = on_attach
})

-- ╭────────────────╮
-- │ DOCKER COMPOSE │
-- ╰────────────────╯
lsp_config.docker_compose_language_service.setup({
    -- capabilities = lsp_capabilities,
    --  capabilities = require("cmp_nvim_lsp").default_capabilities(),
    --  on_attach = on_attach
})

-- ╭─────╮
-- │ CMP │
-- ╰─────╯

local cmp = require("cmp")

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  mapping = cmp.mapping.preset.insert({
    -- Enter key confirms completion item
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl + space triggers completion menu
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
  },
})
