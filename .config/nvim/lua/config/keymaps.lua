-- ~/.config/nvim/lua/config/keymaps.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- File actions
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)
map("n", "<leader>h", ":nohlsearch<CR>", opts)

-- Telescope (after plugin loads)
map("n", "<leader>f", function() require("telescope.builtin").find_files() end, opts)
map("n", "<leader>g", function() require("telescope.builtin").live_grep() end, opts)

