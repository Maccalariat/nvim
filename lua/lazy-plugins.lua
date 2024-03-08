require("lazy").setup({
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	-- "gc" to comment visual regions/lines
	{ "numToStr/Comment.nvim", opts = {} },

	require("plugins/gitsigns"),

	require("plugins/which-key"),

	require("plugins/telescope"),

	require("plugins/lspconfig"),

	require("plugins/conform"),

	require("plugins/cmp"),

	require("plugins/tokyonight"),

	require("plugins/todo-comments"),

	require("plugins/mini"),

	require("plugins/treesitter"),

	require("plugins/toggleterm"),

	require("plugins/nvim-tree"),
})
