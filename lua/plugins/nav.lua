return {
  {
    "SmiteshP/nvim-navbuddy",
    -- event = "LspAttach",
    dependencies = {
      { "neovim/nvim-lspconfig" },
      { "SmiteshP/nvim-navic" },
      { "MunifTanjim/nui.nvim" },
      { "numToStr/Comment.nvim" },
    },
    opts = {
      window = {
        size = "80%",
        border = "rounded",
        sections = {
          left = {
            size = "20%",
            border = nil, -- You can set border style for each section individually as well.
          },
          mid = {
            size = "60%",
            border = nil,
          },
          right = {
            -- No size option for right most section. It fills to
            -- remaining area.
            border = nil,
            preview = "leaf", -- Right section can show previews too.
            -- Options: "leaf", "always" or "never"
          },
        },
      },
      lsp = { auto_attach = true },
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
