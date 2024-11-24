return {
  "catppuccin/nvim",
  name = "catppuccin", -- Optional alias for the plugin
  config = function()
    -- Function to set the colorscheme and apply custom highlights
    local function DoColor(color)
      color = color or "catppuccin"
      vim.cmd.colorscheme(color)

      -- Make background transparent
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end

    DoColor() -- Apply the colorscheme
  end,
}

