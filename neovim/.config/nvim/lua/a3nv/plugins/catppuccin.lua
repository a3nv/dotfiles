return {
  -- Add Catppuccin theme plugin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "latte", -- Choose 'latte' for the light theme
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = true,
          treesitter = true,
          lsp_trouble = true,
          markdown = true,
          -- Add more integrations as needed
        },
        color_overrides = {
          latte = {
            base = "#FFFFFF", -- Adjust background if needed
            text = "#4C4F69", -- Ensure good contrast
          },
        },
      })
      vim.cmd([[colorscheme catppuccin]])
    end,
  },
}

