-- ~/.config/nvim/lua/config/plugins.lua

return {
  -- Treesitter for better syntax highlighting
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Statusline
  { "nvim-lualine/lualine.nvim" },

  -- Telescope fuzzy finder
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- Alpha dashboard
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("alpha").setup(require("alpha.themes.dashboard").opts)
    end,
  },

  -- LSP setup
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },
    },
  },
}

