return {
	"rcarriga/nvim-dap-ui",
	dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
	init = function()
		local dapui = require("dapui")
		dapui.setup()
	end,
}
