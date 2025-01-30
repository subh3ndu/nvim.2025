return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Linters
        -- null_ls.builtins.diagnostics.gdtoolkit,         -- godot

        -- Formatters
        null_ls.builtins.formatting.prettier,           -- JS, TS, Angular
        null_ls.builtins.formatting.stylua, -- Lua
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format current document." })
  end,
}
