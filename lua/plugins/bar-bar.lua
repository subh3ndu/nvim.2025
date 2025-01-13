return {
  'romgrk/barbar.nvim',
  version = '^1.0.0',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {},
  config = function()
    require('barbar').setup()

    -- Move to previous/next
    vim.keymap.set('n', '<leader>,', ':BufferPrevious<CR>', { desc = "Previous Buffer" })
    vim.keymap.set('n', '<leader>.', ':BufferNext<CR>', { desc = "Next Buffer" })

    -- Reorder to previous or next
    vim.keymap.set('n', '<leader><', ':BufferMovePrevious<CR>', { desc = "Move Previous Buffer" })
    vim.keymap.set('n', '<leader>>', ':BufferMoveNext<CR>', { desc = "Move Next Buffer" })

    -- Goto buffer in position
    vim.keymap.set('n', '<leader>1', ':BufferGoto 1<CR>', { desc = "Goto 1st Buffer" })
    vim.keymap.set('n', '<leader>2', ':BufferGoto 2<CR>', { desc = "Goto 2nd Buffer" })
    vim.keymap.set('n', '<leader>3', ':BufferGoto 3<CR>', { desc = "Goto 3rd Buffer" })
    vim.keymap.set('n', '<leader>4', ':BufferGoto 4<CR>', { desc = "Goto 4th Buffer" })
    vim.keymap.set('n', '<leader>5', ':BufferGoto 5<CR>', { desc = "Goto 5th Buffer" })
    vim.keymap.set('n', '<leader>6', ':BufferGoto 6<CR>', { desc = "Goto 6th Buffer" })
    vim.keymap.set('n', '<leader>7', ':BufferGoto 7<CR>', { desc = "Goto 7th Buffer" })
    vim.keymap.set('n', '<leader>8', ':BufferGoto 8<CR>', { desc = "Goto 8th Buffer" })
    vim.keymap.set('n', '<leader>9', ':BufferGoto 9<CR>', { desc = "Goto 9th Buffer" })
    vim.keymap.set('n', '<leader>0', ':BufferLast  <CR>', { desc = "Goto Last Buffer" })

    -- Pin a tab
    vim.keymap.set('n', '<leader>p', ':BufferPin<CR>', { desc = "Pin Buffer" })

    -- Close & Restore
    vim.keymap.set('n', '<leader>c', ':BufferClose<CR>', { desc = "Close Buffer" })
    vim.keymap.set('n', '<leader>ac', ':BufferRestore<CR>', { desc = "Restore Buffer" })
  end
}
