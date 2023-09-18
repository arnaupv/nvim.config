return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      autoformat = true,
    },
  },
  { import = "plugins.lang.java" },
  { import = "plugins.lang.markdown" },
  { import = "plugins.lang.lua" },
  { import = "plugins.lang.sh" },
  { import = "plugins.lang.python" },
  { import = "plugins.lang.docker" },
  { import = "plugins.lang.xml" },
}
