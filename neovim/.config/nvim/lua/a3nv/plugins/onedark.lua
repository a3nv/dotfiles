return {
  {
    "olimorris/onedarkpro.nvim",
    lazy     = false,
    priority = 1000,
    config   = function()
      require("onedarkpro").setup({
        colors = {
          -- red = "#FF0000",
        },
      })
      -- vim.cmd("colorscheme onelight")
      vim.cmd("colorscheme onedark")
    end,  -- ← trailing comma
  },
}

