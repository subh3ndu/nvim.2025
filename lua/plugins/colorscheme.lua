return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd("set background=dark")
    vim.cmd("colorscheme tokyonight-moon")
  end,
}
