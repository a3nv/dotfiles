return {
  "projekt0n/github-nvim-theme",
  lazy = false,  -- Load the plugin on startup
  priority = 1000,  -- Make sure it loads before other plugins
  config = function()
    require("github-theme").setup({
		options = {
			transparent = false,
			styles = {-- Set to true for transparent background
				comment_style = "italic",
				keyword_style = "bold",
				function_style = "italic,bold",
				variable_style = "NONE",
			},
--			darken = {
--				floats = true,
--				sidebars = {
--					enable = true
--				},
--			},
		}
    })
    --vim.cmd("colorscheme github_light")
  end,
}

