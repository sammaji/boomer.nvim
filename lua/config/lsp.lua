require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "rust_analyzer",
        "biome",
        "html",
        "tailwindcss"
    }
})

local lsp = require("lspconfig")

lsp.lua_ls.setup {}
lsp.rust_analyzer.setup {}
lsp.clangd.setup {} -- c and cpp
lsp.bashls.setup {}

lsp.html.setup {}
lsp.biome.setup {} -- json, js, ts
lsp.markdown_oxide.setup {}
lsp.tailwindcss.setup {}
lsp.dockerls.setup {}
