---@type LazySpec
return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
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
  }
}
