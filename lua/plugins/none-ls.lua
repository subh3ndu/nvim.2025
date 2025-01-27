return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup {
      sources = {
        -- Linters

        -- Formatters
        null_ls.builtins.formatting.prettier,           -- JS, TS, Angular
        null_ls.builtins.formatting.stylua,             -- Lua
        null_ls.builtins.formatting['clang_format'],    -- C, C++
      },
    }

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format current document." })
  end,
}
