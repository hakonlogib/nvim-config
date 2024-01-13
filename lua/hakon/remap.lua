vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>s", vim.cmd.vsplit)

vim.keymap.set("n", "<leader>l","<C-w>h")
vim.keymap.set("n", "<leader>r","<C-w>l")
vim.keymap.set("n", "<leader>u", "<C-w>k")
vim.keymap.set("n", "<leader>d", "<C-w>j")

vim.keymap.set("n", "<leader>c", "<C-w>q")

vim.keymap.set("n", "<leader>+", "<C-w>>")
vim.keymap.set("n", "<leader>-", "<C-w><")

vim.keymap.set("x", "<leader>p", "\"_dP")

--debugger

vim.api.nvim_set_keymap("n", "<leader>db", ":DapUiToggle<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>dr", ":lua require('dapui').open({reset = true})<CR>", {noremap = true})



