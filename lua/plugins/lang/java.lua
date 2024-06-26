-- Config obtained from: https://github.com/appelgriebsch/Nv
return {

  -- add java to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "java" })
      end
    end,
  },

  -- correctly setup mason lsp extensions
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "jdtls" })
      end
    end,
  },

  -- correctly setup mason-nvim-dap extensions
  -- {
  --   "arnaupv/mason-nvim-dap.nvim",
  --   opts = function(_, opts)
  --     if type(opts.ensure_installed) == "table" then
  --       vim.list_extend(opts.ensure_installed, { "javatest", "javadbg@0.51.0" })
  --     end
  --   end,
  -- },

  -- correctly setup mason-null-ls extensions
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          -- "semgrep",
          "google_java_format",
        })
      end

      local null_ls = require("null-ls")
      opts.handlers = {
        -- function() end, -- disables automatic setup of all null-ls sources
        google_java_format = function(source_name, methods)
          null_ls.register(null_ls.builtins.formatting.google_java_format)
        end,
        -- semgrep = function(source_name, methods)
        --   null_ls.register(null_ls.builtins.diagnostics.semgrep.with({ extra_args = { "--config", "auto" } }))
        -- end,
      }
    end,
  },

  -- correctly setup lspconfig
  -- {
  --   "neovim/nvim-lspconfig",
  --   dependencies = { "mfussenegger/nvim-jdtls" },
  --   opts = {
  --     -- configure jdtls and attach to Java ft
  --     setup = {
  --       jdtls = function(_, opts)
  --         -- Determine OS
  --         if vim.fn.has("mac") == 1 then
  --           CONFIG = "mac"
  --         elseif vim.fn.has("unix") == 1 then
  --           CONFIG = "linux"
  --         else
  --           print("Unsupported system")
  --         end
  --
  --         local mason_registry = require("mason-registry")
  --         local jdtls_pkg = mason_registry.get_package("jdtls")
  --         local jdtls_path = jdtls_pkg:get_install_path()
  --         local jdtls_bin = jdtls_path .. "/bin/jdtls"
  --
  --         local bundles = {}
  --
  --         if mason_registry.has_package("java-test") and mason_registry.has_package("java-debug-adapter") then
  --           -- jdtls tools configuration for debugging support
  --           local java_test_pkg = mason_registry.get_package("java-test")
  --           local java_test_path = java_test_pkg:get_install_path()
  --
  --           local java_dbg_pkg = mason_registry.get_package("java-debug-adapter")
  --           local java_dbg_path = java_dbg_pkg:get_install_path()
  --
  --           local jar_patterns = {
  --             java_dbg_path .. "/extension/server/com.microsoft.java.debug.plugin-*.jar",
  --             java_test_path .. "/extension/server/*.jar",
  --           }
  --
  --           for _, jar_pattern in ipairs(jar_patterns) do
  --             for _, bundle in ipairs(vim.split(vim.fn.glob(jar_pattern), "\n")) do
  --               table.insert(bundles, bundle)
  --             end
  --           end
  --         end
  --
  --         local extendedClientCapabilities = vim.tbl_deep_extend("force", require("jdtls").extendedClientCapabilities, {
  --           resolveAdditionalTextEditsSupport = true,
  --           progressReportProvider = false,
  --         })
  --
  --         local function print_test_results(items)
  --           if #items > 0 then
  --             vim.cmd([[Trouble quickfix]])
  --           else
  --             vim.cmd([[TroubleClose quickfix]])
  --           end
  --         end
  --
  --         vim.api.nvim_create_autocmd("FileType", {
  --           pattern = "java",
  --           callback = function()
  --             -- Find root of project
  --             local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
  --             local root_dir = require("jdtls.setup").find_root(root_markers)
  --             if root_dir == "" then
  --               return
  --             end
  --             local workspace_folder = "/tmp/nvim/jdtls/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")
  --
  --             local jdtls = require("jdtls")
  --             local jdtls_config = vim.tbl_deep_extend("force", opts, {
  --               on_attach = require("lazyvim.util").on_attach(function(client, buffer)
  --                 -- custom keymaps
  --                 vim.keymap.set("n", "<leader>co", function()
  --                   require("jdtls").organize_imports()
  --                 end, { buffer = buffer, desc = "Organize Imports" })
  --                 vim.keymap.set("n", "<leader>ct", function()
  --                   require("jdtls").pick_test({ bufnr = buffer, after_test = print_test_results })
  --                 end, { buffer = buffer, desc = "Run Test" })
  --                 require("jdtls").setup_dap({ hotcodereplace = "auto" })
  --                 require("jdtls.dap").setup_dap_main_class_configs()
  --                 require("jdtls.setup").add_commands()
  --               end),
  --               cmd = {
  --                 jdtls_bin,
  --                 "-data",
  --                 workspace_folder,
  --                 "--jvm-args=-javaagent:/home/arnaup/.local/share/nvim/mason/share/jdtls/lombok.jar",
  --                 "--jvm-arg=-Xms2G",
  --                 "--jvm-arg=-Dlog.level=ALL",
  --               },
  --               settings = {
  --                 java = {
  --                   configuration = {
  --                     updateBuildConfiguration = "automatic",
  --                   },
  --                   codeGeneration = {
  --                     toString = {
  --                       template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
  --                     },
  --                     useBlocks = true,
  --                   },
  --                   completion = {
  --                     favoriteStaticMembers = {
  --                       "org.assertj.core.api.Assertions.*",
  --                       "org.junit.Assert.*",
  --                       "org.junit.Assume.*",
  --                       "org.junit.jupiter.api.Assertions.*",
  --                       "org.junit.jupiter.api.Assumptions.*",
  --                       "org.junit.jupiter.api.DynamicContainer.*",
  --                       "org.junit.jupiter.api.DynamicTest.*",
  --                       "org.mockito.Mockito.*",
  --                       "org.mockito.ArgumentMatchers.*",
  --                       "org.mockito.Answers.*",
  --                     },
  --                     importOrder = {
  --                       "#",
  --                       "java",
  --                       "javax",
  --                       "com",
  --                       "org",
  --                       "lombok",
  --                     },
  --                   },
  --                   contentProvider = { preferred = "fernflower" },
  --                   eclipse = {
  --                     downloadSources = true,
  --                   },
  --                   flags = {
  --                     allow_incremental_sync = true,
  --                     server_side_fuzzy_completion = true,
  --                   },
  --                   implementationsCodeLens = {
  --                     enabled = false, --Don"t automatically show implementations
  --                   },
  --                   inlayHints = {
  --                     parameterNames = { enabled = "literals" },
  --                   },
  --                   maven = {
  --                     downloadSources = true,
  --                   },
  --                   referencesCodeLens = {
  --                     enabled = false, --Don"t automatically show references
  --                   },
  --                   references = {
  --                     includeDecompiledSources = true,
  --                   },
  --                   saveActions = {
  --                     organizeImports = true,
  --                   },
  --                   signatureHelp = { enabled = true },
  --                   sources = {
  --                     organizeImports = {
  --                       starThreshold = 9999,
  --                       staticStarThreshold = 9999,
  --                     },
  --                   },
  --                 },
  --               },
  --               init_options = {
  --                 extendedClientCapabilities = extendedClientCapabilities,
  --                 bundles = bundles,
  --               },
  --             })
  --             jdtls.start_or_attach(jdtls_config)
  --           end,
  --         })
  --         return true
  --       end,
  --     },
  --   },
  -- },
}
