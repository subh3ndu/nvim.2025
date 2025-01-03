
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("subh3ndu.options")
require("subh3ndu.keymaps")

require("lua.lazy")
