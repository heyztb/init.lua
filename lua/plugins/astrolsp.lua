-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    -- Configuration table of features provided by AstroLSP
    features = {
      autoformat = true, -- enable or disable auto formatting on start
      codelens = true, -- enable/disable codelens refresh on start
      inlay_hints = false, -- enable/disable inlay hints on start
      semantic_tokens = true, -- enable/disable semantic token highlighting
    },
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
      },
      timeout_ms = 1000, -- default format timeout
    },
    -- mappings to be set up on attaching of a language server
    mappings = {
      n = {
        ["<Leader>lb"] = {
          function ()
            require('neogen').generate({type = "func"})
          end,
          desc = "Generate function annotation"
        },
        ["<Leader>lt"] = {
          function ()
            require('neogen').generate({type = "type"})
          end,
          desc = "Generate type annotation"
        }
      },
    },
  },
}
