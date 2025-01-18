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
      require("mason-lspconfig").setup {
        auto_install = true,
      }
    end,
  },

  -- nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Lua lsp config
      lspconfig.lua_ls.setup {
        capabilities = capabilities,

        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim", "love" },
            },
            workspace = {
              checkThirdParty = false,
              telemetry = { enable = false },
              maxPreload = 10000,
              preloadFileSize = 10000,
              library = {
                "${3rd}/love2d/library",
              },
            },
          },
        },
      }

      -- GdScript lsp config
      lspconfig.gdscript.setup {
        capabilities = capabilities,
        settings = {}
      }

      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Give Suggestions" })
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Goto Code Actions" })
    end,
  },
}
