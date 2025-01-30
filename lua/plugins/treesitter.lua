return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup {
      auto_install = true,
      sync_install = false,
      highlight = {
        enable = true,
        disable = { 'latex' },
        additional_vim_regex_highlighting = { "latex", "markdown" }
      },
      indent = { enable = true },
      option = { theme = "tokyonight" },
    }
  end,
}
