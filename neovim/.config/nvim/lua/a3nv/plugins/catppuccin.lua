return { 
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  config = function()
	-- print("Setting up Catppuccin")
	require("catppuccin").setup({
	  -- flavour = "frappe", -- Set the desired flavor
	  -- flavour = "macchiato", -- Set the desired flavor
	  flavour = "mocha", -- Set the desired flavor
	  transparent_background = true,
	})
	-- vim.cmd([[colorscheme catppuccin]])
  end,
}

