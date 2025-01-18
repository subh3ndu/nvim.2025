return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("dashboard").setup {
      theme = "hyper",
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          { desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
          { desc = " Apps", group = "DiagnosticHint", action = "Telescope app", key = "a" },
          { desc = " dotfiles", group = "Number", action = "Telescope dotfiles", key = "d" },
          { desc = " Files", group = "Label", action = "Telescope find_files", key = "f" },
        },
      },
    }
  end,
}
