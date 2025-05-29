return 
{
	"olimorris/onedarkpro.nvim",
	priority = 1000, -- Ensure it loads first
	config = function()
		require("onedarkpro").setup({
			colors = {
				-- red = "#FF0000"
			}
		})
		-- vim.cmd.colorscheme("onedark")
		vim.cmd("colorscheme onedark")
		-- vim.cmd("colorscheme onelight")
	end

	-- somewhere in your config:
}
