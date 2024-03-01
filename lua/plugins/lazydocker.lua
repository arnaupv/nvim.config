return {
  "crnvl96/lazydocker.nvim",
  event = "VeryLazy",
  opts = {}, -- automatically calls `require("lazydocker").setup()`
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  keys = {
        -- stylua: ignore
        {
            "<leader>cdd",
            "<cmd>LazyDocker<CR>",
            desc = "Toggle LazyDocker",
            noremap = true,
            silent = true,
        },
  },
}
