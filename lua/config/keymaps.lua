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
  '<cmd>:lua require("lazy.util").float_term({"zsh"}, { border = "rounded" , title = "ZSH", title_pos = "center"})<cr>',
  { noremap = true, silent = false, desc = "Terminal ZSH (cwd)" }
)
vim.keymap.set("n", "<C-d>", "zz<C-d>", { noremap = true, silent = false, desc = "zz + <C-d> (center page)" })
vim.keymap.set("n", "<C-u>", "zz<C-u>", { noremap = true, silent = false, desc = "zz + <C-u> (center page)" })

-- Tmux
-- vim.keymap.set("n", "<C-h>", "<cmd>lua require('nvim-tmux-navigation').NvimTmuxNavigateLeft<cr>", { desc = "Tmux: Navigate Left" })
-- vim.keymap.set("n", "<C-j>", "<cmd>lua require('nvim-tmux-navigation').NvimTmuxNavigateDown<cr>", { desc = "Tmux: Navigate Down" })
-- vim.keymap.set("n", "<C-k>", "<cmd>lua require('nvim-tmux-navigation').NvimTmuxNavigateUp<cr>", de{ sc = "Tmux: Navigate Up" })
-- vim.keymap.set("n", "<C-l>", "<cmd>lua require('nvim-tmux-navigation').NvimTmuxNavigateRight<cr>",{  desc = "Tmux: Navigate Right" })

-- Break out window into a new tab without closing the previous window
vim.keymap.set("n", "<C-W>t", ":tab split<cr>", { noremap = true, silent = false, desc = "Split into a new tab" })
