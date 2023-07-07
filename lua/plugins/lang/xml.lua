return {
  "jay-babu/mason-null-ls.nvim",
  opts = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      vim.list_extend(opts.ensure_installed, { "xmlformatter" })
    end

    local null_ls = require("null-ls")
    opts.handlers = {
      -- function() end, -- disables automatic setup of all null-ls sources
      -- xmlformat = function(source_name, methods)
      --   null_ls.register(null_ls.builtins.formatting.xmlformat)
      -- end,
    }
  end,
}
