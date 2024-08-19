return {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    keys = {
        {
            "<leader>ol",
            ":ObsidianLinks<cr>",
            desc = "Open Obsidian Links",
        },
        {
            "<leader>ob",
            ":ObsidianBacklinks<cr>",
            desc = "Open Obsidian Backlinks",
        }
    },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope.nvim",
      "nvim-treesitter/nvim-treesitter",
      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = "basb",
          path = "~/obsidian/basb",
        },
        -- {
        --   name = "work",
        --   path = "~/vaults/work",
        -- },
      },
  -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
  -- URL it will be ignored but you can customize this behavior here.
  ---@param url string
  follow_url_func = function(url)
    -- Open the URL in the default web browser.
    -- vim.fn.jobstart({"xdg-open", url})  -- linux
    vim.ui.open(url) -- need Neovim 0.10.0+
  end,
      -- see below for full list of options 👇
    },
}
