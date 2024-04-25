return {
	"mfussenegger/nvim-dap-python",
	dependencies = {
		"mfussenegger/nvim-dap",
	},
	config = function()
		require("dap-python").setup("~/venv/Scripts/python.exe")
		require("dap.ext.vscode").load_launchjs("launch.json")
	end,
}
