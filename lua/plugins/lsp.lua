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
					"clangd",     -- C & C++
					"lua_ls",     -- lua
				},
			})
		end,
	},

	-- nvim-lspconfig
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local gdscript_config = {
        capabilities = capabilities,
        settings = {}
      }
      if vim.fn.has 'win32' == 1 then
        gdscript_config['cmd'] = { 'ncat', 'localhost', os.getenv 'GDScript_Port' or '6005' }
      end

			lspconfig.lua_ls.setup({
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
              }
            }
					},
				},
			})

      lspconfig.gdscript.setup(gdscript_config)

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Give Suggestions" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Goto Code Actions" })
		end,
	},
}
