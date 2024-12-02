return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = false,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
    },
  },
  config = function()
    vim.cmd([[colorscheme tokyonight]])
  end,
}

