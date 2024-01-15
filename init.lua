
vim.g.mapleader = " "


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("lazy").setup("plugins")


--REMAPS
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

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--CONFIG
vim.opt.relativenumber = true
vim.opt.nu = true


vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.scrolloff = 8
vim.opt.termguicolors = true
vim.opt.hlsearch = false
vim.opt.incsearch = true



