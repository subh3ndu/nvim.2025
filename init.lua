-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- for godot editor
if vim.fn.filereadable(vim.fn.getcwd() .. '/project.godot') == 1 then
  local addr = './godot.pipe'
  if vim.fn.has 'win32' == 1 then
    addr = '127.0.0.1:6004'
  end
  vim.fn.serverstart(addr)
end

require("subh3ndu.lazy")
require("subh3ndu.options")
require("subh3ndu.keymaps")
