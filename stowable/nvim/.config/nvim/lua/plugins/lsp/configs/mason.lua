return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"jsonls",
				"bashls",
				"tailwindcss",
				"jedi_language_server",
				"html",
				"clangd",
				"emmet_ls",
				"cssls",
				"ts_ls",
				"lua_ls",
				"gopls",
				"dockerls",
				"docker_compose_language_service",
			},
		},
		dependencies = {
			{
				"mason-org/mason.nvim",
				config = function()
					require("mason").setup({
						ui = {
							icons = {
								package_installed = "✓",
								package_pending = "",
								package_uninstalled = "✗",
							},
							border = "single",
						},
					})
				end,
				cmd = {
					"Mason",
					"MasonInstall",
					"MasonUpdate",
					"MasonUninstall",
					"MasonUninstallAll",
					"MasonLog",
				},
			},
			{
				"WhoIsSethDaniel/mason-tool-installer.nvim",
				config = function()
					require("mason-tool-installer").setup({
						ensure_installed = {
							"black",
							"clang-format",
							"jq",
							"prettier",
							"stylua",
							"shfmt",
						},
					})
				end,
			},
		},
	},
}
