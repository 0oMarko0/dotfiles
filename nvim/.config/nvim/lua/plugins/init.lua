require("lazy").setup {
  {
    "folke/tokyonight.nvim",
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd [[colorscheme oxocarbon]]
    end,
  },
}
