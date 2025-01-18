return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      require('toggleterm').setup()

      vim.keymap.set('n', '<leader>`', ':ToggleTerm size=40 direction=float <cr>', { desc = 'open terminal' })
    end
  }
}
