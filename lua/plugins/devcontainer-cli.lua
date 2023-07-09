return {
  -- "arnaupv/nvim-devcontainer-cli",
  {
    dir = "/home/pontsoul/Documents/Lab/NvimPlugins/nvim-devcontainer-cli",
    event = "VeryLazy",
    config = true,
    dev = true,
    opts = {
      nvim_dotfiles = "https://github.com/arnaupv/dotfiles.git",
      nvim_dotfiles_install = "./install.sh -p 'nvim stow zsh'",
    },
    keys = {
      -- stylua: ignore
      {
        "<leader>cdu",
        ":DevcontainerUp<cr>",
        desc = "Up the DevContainer",
      },
      {
        "<leader>cdc",
        ":DevcontainerConnect<cr>",
        desc = "Connect to DevContainer",
      },
    },
  },
  -- dir = "/home/pontsoul/Documents/Lab/NvimPlugins/nvim-dev-container",
  -- config = true,
  -- dev = true,
  -- {
  --   "esensar/nvim-dev-container",
  --   event = "VeryLazy",
  --   opts = {
  --     -- autocommands = { init = true },
  --   },
  -- },
}
