return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			inlay_hints = { enabled = false },
			servers = {
				clangd = {
					keys = {
						{ "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C/C++)" },
					},
				},
			},
		},
	},
}
