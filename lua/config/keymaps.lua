-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>uh", "<cmd>checkhealth<cr>", { noremap = true, silent = false, desc = "Check Health" })
vim.keymap.set(
  "n",
  "<leader>ul",
  "<cmd>:edit $NVIM_LOG_FILE<cr>",
  { noremap = true, silent = false, desc = "Show LogFile" }
)
vim.keymap.set("n", "<leader>um", "<cmd>:messages<cr>", { noremap = true, silent = false, desc = "Show Messages" })
vim.keymap.set(
  "n",
  "<leader>fZ",
  '<cmd>:lua require("lazy.util").float_term({"zsh"})<cr>',
  { noremap = true, silent = false, desc = "Terminal ZSH (cwd)" }
)
vim.keymap.set("n", "<C-d>", "zz<C-d>", { noremap = true, silent = false, desc = "zz + <C-d> (center page)" })
vim.keymap.set("n", "<C-u>", "zz<C-u>", { noremap = true, silent = false, desc = "zz + <C-u> (center page)" })
