return {
  {
    "neovim/nvim-lspconfig",
    -- dependencies = {
    --   {
    --     "SmiteshP/nvim-navbuddy",
    --     dependencies = {
    --       "SmiteshP/nvim-navic",
    --       "MunifTanjim/nui.nvim",
    --     },
    --     opts = { lsp = { auto_attach = true } },
    --  },
    -- },
    -- ---@class PluginLspOpts
    -- opts = {
    --   autoformat = true,
    -- },
  },
  { import = "plugins.lang.java" },
  { import = "plugins.lang.markdown" },
  { import = "plugins.lang.lua" },
  { import = "plugins.lang.sh" },
  { import = "plugins.lang.python" },
  { import = "plugins.lang.docker" },
  { import = "plugins.lang.xml" },
}
