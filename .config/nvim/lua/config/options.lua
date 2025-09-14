-- ~/.config/nvim/lua/config/options.lua

vim.g.mapleader = " "

-- UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.cursorline = true

-- Indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

-- Behavior
vim.opt.wrap = false
vim.opt.clipboard = "unnamedplus"
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Make background transparent
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })


