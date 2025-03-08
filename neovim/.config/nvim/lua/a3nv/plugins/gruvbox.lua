return { 
	"ellisonleao/gruvbox.nvim", 
	priority = 1000 , 
	config = function()
		require("gruvbox").setup({
			contrast = "hard",
			palette_overrides = {
				-- dark0_hard = "#000000"
			},
		})
		vim.cmd.colorscheme("gruvbox")
	end,
}
