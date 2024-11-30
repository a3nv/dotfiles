return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "dawn", -- Use "dawn" for the light theme
        dark_variant = "main", -- Optional: specify the dark variant
        bold_vert_split = false, -- Optional: customize borders
        disable_background = false, -- Optional: set to true if you want a transparent background
        disable_float_background = false, -- Optional: set to true for transparent float windows
        highlight_groups = {
          -- Custom highlights (optional)
          Comment = { fg = "muted", italic = true },
          Normal = { fg = "text", bg = "base" },
        },
      })

      -- Set the colorscheme
      vim.cmd([[colorscheme rose-pine]])
    end,
  },
}

