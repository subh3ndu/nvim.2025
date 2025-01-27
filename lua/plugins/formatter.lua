return {
  "mhartington/formatter.nvim",
  config = function()
    local util = require("formatter.util")

    require("formatter").setup({
      logging = true,
      log_level = vim.log.levels.WARN,
      filetype = {
        -- Bash
        sh = require("formatter.filetypes.sh").beautysh,

        -- C, C++
        cpp = require("formatter.filetypes.c").clang_format,
        c = require("formatter.filetypes.cpp").clang_format,
        cs = require("formatter.filetypes.cs").clang_format,

        -- JavaScript, TypeScript
        html = require("formatter.filetypes.html").prettier,
        css = require("formatter.filetypes.css").prettier,
        js = require("formatter.filetypes.javascript").prettier,
        ts = require("formatter.filetypes.typescript").prettier,
        md = require("formatter.filetypes.markdown").prettier,

        -- Python
        py = require("formatter.filetypes.python").black,

        -- Godot
        -- gd = require("formatter.filetypes.gdscript").gdtoolkit,

        -- Latex
        latex = require("formatter.filetypes.latex").latexindent,

        -- Lua
        lua = {
          require("formatter.filetypes.lua").stylua,

          function()
            if util.get_current_buffer_file_name() == "special.lua" then
              return nil
            end

            return {
              exe = "stylua",
              args = {
                "--search-parent-directories",
                "--stdin-filepath",
                util.escape_path(util.get_current_buffer_file_path()),
                "--",
                "-",
              },
              stdin = true,
            }
          end,
        },

        ["*"] = {
          require("formatter.filetypes.any").remove_trailing_whitespace,
        },
      },

      vim.keymap.set("n", "<leader>fr", ":Format<cr>", { desc = "Format current document." })
    })
  end,
}
