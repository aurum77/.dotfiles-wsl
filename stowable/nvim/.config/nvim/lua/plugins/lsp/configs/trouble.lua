return {
	"folke/trouble.nvim",
	init = function()
		local opts = require("core.utils").opts
		vim.keymap.set("n", "<Leader>fa", "<Cmd>Trouble diagnostics toggle focus=true<CR>", opts)
		vim.keymap.set("n", "<Leader>fd", "<Cmd>Trouble diagnostics toggle filter.buf=0 focus=true<CR>", opts)
	end,
	opts = {
		signs = {
			error = " ",
			warning = " ",
			information = " ",
			hint = " ",
		},
	},
	event = "LspAttach",
}
