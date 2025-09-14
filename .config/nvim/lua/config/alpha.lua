-- ~/.config/nvim/lua/config/alpha.lua

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")


-- Buttons
dashboard.section.buttons.val = {
  dashboard.button("e", "  New file", ":ene <BAR> startinsert<CR>"),
  dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
  dashboard.button("r", "  Recent", ":Telescope oldfiles<CR>"),
  dashboard.button("q", "  Quit", ":qa<CR>"),
}

-- Footer
-- dashboard.section.footer.val = ""

-- Layout
alpha.setup(dashboard.opts)

-- Make it transparent if you use transparent backgrounds
vim.api.nvim_set_hl(0, "AlphaHeader", { bg = "none" })
vim.api.nvim_set_hl(0, "AlphaButtons", { bg = "none" })
vim.api.nvim_set_hl(0, "AlphaFooter", { bg = "none" })

