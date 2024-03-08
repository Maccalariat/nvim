return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				open_mapping = [[<C-\>]],
				hide_numbers = true,
				direction = "float",
				border = "single",
				title_pos = "center",
			})
		end,
	},
}
