return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")

		vim.keymap.set("n", "db", dap.toggle_breakpoint, { desc = "Debug: toggle breakpoint" })
		vim.keymap.set("n", "dB", function()
			dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
		end, { desc = "Debug: conditional breakpoint" })

		vim.keymap.set("n", "dc", dap.continue, { desc = "Debug: continue" })
		vim.keymap.set("n", "dn", dap.step_over, { desc = "Debug: step over" })
		vim.keymap.set("n", "di", dap.step_into, { desc = "Debug: step into" })
		vim.keymap.set("n", "do", dap.step_out, { desc = "Debug: step out" })

		vim.keymap.set("n", "dr", dap.restart, { desc = "Debug: restart" })
		vim.keymap.set("n", "dt", dap.terminate, { desc = "Debug: terminate" })

		vim.keymap.set("n", "du", function()
			require("dapui").toggle()
		end, { desc = "Debug: toggle UI" })

		vim.keymap.set("n", "dl", function()
			dap.run_to_cursor()
		end, { desc = "Debug: run to cursor" })
	end,
}
