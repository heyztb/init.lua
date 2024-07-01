---@type LazySpec
return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, config = function (_, _)
    require("catppuccin").setup({
      flavour = "frappe"
    })
  end },
  {
    "danymat/neogen",
    config = true,
    version = "*"
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup()
    end
  },
  {
     "m4xshen/hardtime.nvim",
     dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
     opts = {}
  },
}
