return { 
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  config = function()
	-- print("Setting up Catppuccin")
	require("catppuccin").setup({
	  flavour = "mocha", -- Set the desired flavor
	})
	-- vim.cmd([[colorscheme catppuccin]])
  end,
}

