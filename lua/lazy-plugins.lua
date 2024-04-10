require("lazy").setup({
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	-- "gc" to comment visual regions/lines
	{ "numToStr/Comment.nvim", opts = {} },

	require("plugins/better-escape"),

	require("plugins/gitsigns"),

	require("plugins/which-key"),

	require("plugins/telescope"),

	require("plugins/lspconfig"),

	require("plugins/lsp-signature"),

	require("plugins/conform"),

	require("plugins/cmp"),

	require("plugins/todo-comments"),

	require("plugins/mini"),

	require("plugins/treesitter"),

	require("plugins/toggleterm"),

	require("plugins/nvim-tree"),

	require("plugins/hop"),

	require("plugins/autopairs"),

	require("plugins/lualine"),

	require("plugins/neoclip"),
})
