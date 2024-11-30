return {
  "folke/tokyonight.nvim",
  lazy = false, -- Load immediately
  priority = 1000, -- Ensure it loads before other plugins
  config = function()
    vim.cmd([[colorscheme tokyonight]])
    --vim.cmd([[colorscheme tokyonight-day]])
  end,
  opts = {}, -- Optional: customize the theme if needed
}
