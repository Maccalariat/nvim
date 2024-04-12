return {
	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		branch = "0.1.x",
		depndencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("telescope").setup({
				-- pickers = {}
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown(),
					},
				},
			})

			-- Enable telescope extensions, if they are installed
			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("live_grep_args")
			require("telescope").load_extension("projects")

			-- See `:help telescope.builtin`
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
			vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
			vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
			vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
			vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
			vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
			vim.keymap.set("n", "<leader>sR", builtin.resume, { desc = "[S]earch [R]esume" })
			vim.keymap.set("n", "<leader>sr", builtin.registers, { desc = "[s]earch Registers" })
			vim.keymap.set("n", "<F12>", builtin.registers, { desc = "[s]earch Registers" })
			vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
			vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

			vim.keymap.set("i", "<F12>", builtin.registers, { desc = "[s]earch Registers" })

			-- Slightly advanced example of overriding default behavior and theme
			vim.keymap.set("n", "<leader>/", function()
				-- You can pass additional configuration to telescope to change theme, layout, etc.
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, { desc = "[/] Fuzzily search in current buffer" })

			-- Also possible to pass additional configuration options.
			--  See `:help telescope.builtin.live_grep()` for information about particular keys
			vim.keymap.set("n", "<leader>s/", function()
				builtin.live_grep({
					grep_open_files = true,
					prompt_title = "Live Grep in Open Files",
				})
			end, { desc = "[S]earch [/] in Open Files" })

			-- Shortcut for searching your neovim configuration files
			vim.keymap.set("n", "<leader>sn", function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "[S]earch [N]eovim files" })

			vim.keymap.set("n", "<leader>sp", ":Telescope projects<CR>", { desc = "[s]earch projects" })
		end,
	},
	{ "nvim-telescope/telescope-ui-select.nvim", depndencies = { "nvim-telescope/telescope.nvim" } },
	{
		"nvim-telescope/telescope-live-grep-args.nvim",
		depndencies = { "nvim-telescope/telescope.nvim" },
		config = function()
			vim.keymap.set(
				"n",
				"<leader>sw",
				":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
				{ desc = "[s]earch [w]ord" }
			)
		end,
	},
}
