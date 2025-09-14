-- ~/.config/nvim/lua/config/lsp.lua

-- Ensure Mason is loaded
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "pyright" },
})

local lspconfig = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()

local ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if ok then
    capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

local on_attach = function(_, bufnr)
    local map = vim.keymap.set
    local opts = { noremap = true, silent = true, buffer = bufnr }

    map("n", "gd", vim.lsp.buf.definition, opts)
    map("n", "K", vim.lsp.buf.hover, opts)
    map("n", "<leader>rn", vim.lsp.buf.rename, opts)
    map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
end

-- Manually setup servers instead of using setup_handlers
local servers = { "lua_ls", "pyright" }

for _, server in ipairs(servers) do
    lspconfig[server].setup({
        on_attach = on_attach,
        capabilities = capabilities,
    })
end

