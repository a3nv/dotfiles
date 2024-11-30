return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		vim.keymap.set('n', '<leader>e', "<cmd>NvimTreeToggle<CR>", {desc = "Toggle [E]xplorer"})
		require("nvim-tree").setup({
			renderer = {
				highlight_git = true, -- Highlight git status
				highlight_opened_files = "all", -- Highlight all opened files
				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = true,
					},
				},
			},
			view = {
				side = "left",
				width = 30,
			},
			hijack_netrw = true,
			auto_reload_on_write = true,
		})
		-- Custom highlights for nvim-tree
		vim.cmd([[
			highlight NvimTreeNormal guibg=NONE guifg=NONE
			highlight NvimTreeFolderName guifg=#4C4F69
			highlight NvimTreeOpenedFolderName guifg=#6C7086
			highlight NvimTreeEmptyFolderName guifg=#A6ADC8
			highlight NvimTreeRootFolder guifg=#E5E9F0
			highlight NvimTreeGitDirty guifg=#FFA066
			highlight NvimTreeGitNew guifg=#A3BE8C
			highlight NvimTreeGitDeleted guifg=#BF616A
		]])
	end
}
