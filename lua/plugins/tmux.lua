-- return {
--     "alexghergh/nvim-tmux-navigation",
--     event="LazyVimStarted",
--     config = function()
--
--     local nvim_tmux_nav = require("nvim-tmux-navigation")
--     nvim_tmux_nav.setup({
--       disable_when_zoomed = true, -- defaults to false
--     })
--   end
--   --   vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
--   --   vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
--   --   vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
--   --   vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
--   --   vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
--
-- }
return  {
    "aserowy/tmux.nvim",
    config = function() return require("tmux").setup() end,
    keys = {
       { "<C-h>", "<cmd>lua require('tmux').move_left()<cr>", desc = "Tmux: Navigate Left" },
       { "<C-j>", "<cmd>lua require('tmux').move_bottom()<cr>", desc = "Tmux: Navigate Down" },
       { "<C-k>", "<cmd>lua require('tmux').move_top()<cr>", desc = "Tmux: Navigate Up" },
       { "<C-l>", "<cmd>lua require('tmux').move_right()<cr>", desc = "Tmux: Navigate Right" },
    }
}
