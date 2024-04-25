return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		require("dap.ext.vscode").load_launchjs("launch.json")
		local dap, dapui = require("dap"), require("dapui")
		require("dap").listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		require("dap").listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		require("dap").listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		require("dap").listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
	end,
	keys = {
		vim.keymap.set("n", "<F5>", function()
			require("dap").continue()
		end, { desc = "continue" }),
		vim.keymap.set("n", "<C-F5>", ":DapTerminate<CR>", { desc = "terminate" }),
		vim.keymap.set("n", "<F8>", function()
			require("dap").step_over()
		end, { desc = "step over" }),
		vim.keymap.set("n", "<F7>", function()
			require("dap").step_into()
		end, { desc = "step into" }),
		vim.keymap.set("n", "<S-F7>", function()
			require("dap").step_out()
		end, { desc = "step out" }),
		vim.keymap.set("n", "<Leader>b", function()
			require("dap").toggle_breakpoint()
		end, { desc = "toggle breakpoint" }),
		vim.keymap.set("n", "<Leader>DB", function()
			require("dap").set_breakpoint()
		end, { desc = "set breakpoint" }),
		vim.keymap.set("n", "<Leader>Dlp", function()
			require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
		end, { desc = "log point message" }),
		vim.keymap.set("n", "<Leader>Dr", function()
			require("dap").repl.open()
		end, { desc = "repl open" }),
		vim.keymap.set("n", "<Leader>Dl", function()
			require("dap").run_last()
		end, { desc = "run last" }),
		vim.keymap.set({ "n", "v" }, "<Leader>Dh", function()
			require("dap.ui.widgets").hover()
		end, { desc = "hover" }),
		vim.keymap.set({ "n", "v" }, "<Leader>Dp", function()
			require("dap.ui.widgets").preview()
		end, { desc = "preview" }),
		vim.keymap.set("n", "<Leader>Df", function()
			local widgets = require("dap.ui.widgets")
			widgets.centered_float(widgets.frames)
		end, { desc = "frames" }),
		vim.keymap.set("n", "<Leader>Ds", function()
			local widgets = require("dap.ui.widgets")
			widgets.centered_float(widgets.scopes)
		end, { desc = "scope" }),
	},
}
