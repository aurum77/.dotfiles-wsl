return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	cmd = {
		"TSInstall",
		"TSUninstall",
		"TSInstallInfo",
		"TSUpdate",
		"TSBufEnable",
		"TSBufDisable",
		"TSEnable",
		"TSDisable",
		"TSModuleInfo",
		"TSToggle",
		"TSBufToggle",
	},
	opts = {
		highlight = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
		auto_install = true,
		sync_install = false,
	},
	dependencies = {
		"windwp/nvim-ts-autotag",
		{
			"nvim-treesitter/nvim-treesitter-context",
			opts = {
				enable = true,
			},
		},
	},
	event = "BufEnter",
}
