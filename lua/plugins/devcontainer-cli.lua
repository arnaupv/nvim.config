return {
  -- "arnaupv/nvim-devcontainer-cli",
  {
    "arnaupv/nvim-devcontainer-cli",
    -- dir = "/home/arnaup/code/other/nvim-devcontainer-cli",
    event = "VeryLazy",
    -- Set the dev flag to true for using the directory instead of downloading the repo
    dev = true,
    opts = {
      nvim_dotfiles_repo = "https://github.com/arnaupv/nvim.config",
      nvim_dotfiles_install_command = "mv ~/nvim_dotfiles/ ~/.config/nvim",
      -- In case you want to change the way the devenvironment is setup, you can also provide your own setup
      setup_environment_repo = "https://github.com/arnaupv/setup-environment",
      setup_environment_install_command = "./install.sh -p 'nvim stow zsh nodejs'",
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
