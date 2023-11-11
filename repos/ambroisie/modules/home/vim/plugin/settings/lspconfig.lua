local lspconfig = require("lspconfig")
local lsp = require("ambroisie.lsp")
local utils = require("ambroisie.utils")

-- Diagnostics
vim.diagnostic.config({
    -- Disable virtual test next to affected regions
    virtual_text = false,
    -- Also disable virtual diagnostics under the affected regions
    virtual_lines = false,
    -- Show diagnostics signs
    signs = true,
    -- Underline offending regions
    underline = true,
    -- Do not bother me in the middle of insertion
    update_in_insert = false,
    -- Show highest severity first
    severity_sort = true,
})

-- Inform servers we are able to do completion, snippets, etc...
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- C/C++
if utils.is_executable("clangd") then
    lspconfig.clangd.setup({
        capabilities = capabilities,
        on_attach = lsp.on_attach,
    })
end

-- Nix
if utils.is_executable("nil") then
    lspconfig.nil_ls.setup({
        capabilities = capabilities,
        on_attach = lsp.on_attach,
    })
end

if utils.is_executable("rnix-lsp") then
    lspconfig.rnix.setup({
        capabilities = capabilities,
        on_attach = lsp.on_attach,
    })
end

-- Python
if utils.is_executable("pyright") then
    lspconfig.pyright.setup({
        capabilities = capabilities,
        on_attach = lsp.on_attach,
    })
end

-- Rust
if utils.is_executable("rust-analyzer") then
    lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
        on_attach = lsp.on_attach,
    })
end
