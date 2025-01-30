return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  config = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "zathura"
    vim.g.tex_flavor='latex'
    vim.g.vimtex_view_method='zathura'
    vim.g.vimtex_quickfix_mode=0

    -- concealment
    vim.cmd("set conceallevel=1")
    vim.g.tex_conceal='abdmg'
  end
}
