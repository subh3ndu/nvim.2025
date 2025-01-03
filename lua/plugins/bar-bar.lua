return {
    'romgrk/barbar.nvim',
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
    dependencies = {
        'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
        vim.g.barbar_auto_setup = false
    end,
    opts = {
        -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
        -- animation = true,
        -- insert_at_start = true,
        -- …etc.
    },
    config = function()
        require('barbar').setup()

        -- Move to previous/next
        vim.keymap.set('n', '<leader>,', ':BufferPrevious<CR>', {})
        vim.keymap.set('n', '<leader>.', ':BufferNext<CR>', {})

        -- Reorder to previous or next
        vim.keymap.set('n', '<leader><', ':BufferMovePrevious<CR>', {})
        vim.keymap.set('n', '<leader>>', ':BufferMoveNext<CR>', {})

        -- Goto buffer in position
        vim.keymap.set('n', '<leader>1', ':BufferGoto 1<CR>', {})
        vim.keymap.set('n', '<leader>2', ':BufferGoto 2<CR>', {})
        vim.keymap.set('n', '<leader>3', ':BufferGoto 3<CR>', {})
        vim.keymap.set('n', '<leader>4', ':BufferGoto 4<CR>', {})
        vim.keymap.set('n', '<leader>5', ':BufferGoto 5<CR>', {})
        vim.keymap.set('n', '<leader>6', ':BufferGoto 6<CR>', {})
        vim.keymap.set('n', '<leader>7', ':BufferGoto 7<CR>', {})
        vim.keymap.set('n', '<leader>8', ':BufferGoto 8<CR>', {})
        vim.keymap.set('n', '<leader>9', ':BufferGoto 9<CR>', {})
        vim.keymap.set('n', '<leader>0', ':BufferLast<CR>', {})

        -- Pin a tab
        vim.keymap.set('n', '<leader>p', ':BufferPin<CR>', {})

        -- Close & Restore
        vim.keymap.set('n', '<leader>c', ':BufferClose<CR>', {})
        vim.keymap.set('n', '<leader>ac', ':BufferRestore<CR>', {})
    end
}
