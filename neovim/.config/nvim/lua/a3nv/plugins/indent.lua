return {
  "lukas-reineke/indent-blankline.nvim", -- Plugin repository
  config = function()
    require("ibl").setup {
      indent = { char = "|" },
    }
  end,
}

