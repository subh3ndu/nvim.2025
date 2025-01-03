vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set autoindent")
vim.cmd("set relativenumber")
vim.cmd("set nowrap")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set cursorline")
vim.cmd("set termguicolors")
vim.cmd("set background=dark")
vim.cmd("set signcolumn=yes")

vim.cmd("set backspace=indent,eol,start")
vim.cmd("set clipboard^=unnamed,unnamedplus") -- set clipboard as system


vim.cmd([[
set guicursor=n-v-c:block
            \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
            \,i-ci-ve:hor50
            \,r-cr:ver20
            \,o:hor50
            \,sm:block-blinkwait175-blinkoff150-blinkon175
]])
