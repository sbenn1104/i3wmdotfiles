vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "

-- bufferline
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")

-- black python formatting
vim.keymap.set("n", "<leader>fmp", ":silent !black %<cr>")

--Run code
vim.keymap.set("n", "<leader>r", ":!python3 -u %<cr>")


