return {
    -- mason
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    -- mason-lspconfig
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "clangd",   -- C & C++
                    "eslint",   -- Javascript & Typescript
                    "lua_ls",   -- lua
                    "bashls",   -- bash
                    "vimls",    -- VimScript
                    "ltex",     -- LaTeX, Markdown & Text
                },
            })
        end,
    },

    -- nvim-lspconfig
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            lspconfig.lua_ls.setup {
                capabilities = capabilities,

                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim", "ibl.config" },
                        },
                    },
                },
            }

            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    }
}
