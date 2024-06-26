return {
  {
    "SmiteshP/nvim-navbuddy",
    dependencies = {
      "neovim/nvim-lspconfig",
      "SmiteshP/nvim-navic",
      "MunifTanjim/nui.nvim",
      "numToStr/Comment.nvim", -- Optional
      "nvim-telescope/telescope.nvim", -- Optional
    },
  },
  -- nav-navic
  {
    "SmiteshP/nvim-navic",
    event = "LspAttach",
    dependencies = {
      { "neovim/nvim-lspconfig" },
    },
  },
}
