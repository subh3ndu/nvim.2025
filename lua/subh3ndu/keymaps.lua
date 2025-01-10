vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- remove highlights after search
vim.keymap.set('n', '<leader>nh', ':nohl<cr>', { desc = 'Clear search highlights' })

-- increment and decrement numbers
vim.keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment number' })
vim.keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement number' })

-- Window management
vim.keymap.set('n', '<leader>sv', '<C-w>v', { desc = "Split vertically" })
vim.keymap.set('n', '<leader>sh', '<C-w>s', { desc = "Split horizontally" })
vim.keymap.set('n', '<leader>se', '<C-w>=', { desc = "Split equally" })
vim.keymap.set('n', '<leader>sx', ':close<cr>', { desc = "Split close" })

-- Tab management
vim.keymap.set('n', '<leader>tn', ':tabnew<cr>', { desc = "Tab new" })
vim.keymap.set('n', '<leader>tx', ':tabclose<cr>', { desc = "Tab close" })
vim.keymap.set('n', '<leader>tn', ':tabn<cr>', { desc = "Tab next" })
vim.keymap.set('n', '<leader>tp', ':tabp<cr>', { desc = "Tab previous" })
vim.keymap.set('n', '<leader>tf', ':tabnew %<cr>', { desc = "Current buffer in a new tab" })

vim.keymap.set('n', '<leader>to', ':tabnew<cr>', { desc = "Open new tab" })
vim.keymap.set('n', '<leader>to', ':tabnew<cr>', { desc = "Open new tab" })
vim.keymap.set('n', '<leader>to', ':tabnew<cr>', { desc = "Open new tab" })
vim.keymap.set('n', '<leader>to', ':tabnew<cr>', { desc = "Open new tab" })
vim.keymap.set('n', '<leader>to', ':tabnew<cr>', { desc = "Open new tab" })
