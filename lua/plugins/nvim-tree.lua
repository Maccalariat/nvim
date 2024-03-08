return {
	{
		"nvim-tree/nvim-tree.lua",
		cmd = "NvimTreeToggle",
		lazy = true,
		depndencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				sort = {
					sorter = "case_sensitive",
				},
				view = {
					width = 30,
				},
				filters = {
					dotfiles = true,
				},
			})
		end,
	},
}
