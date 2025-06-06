return {
	"stevearc/conform.nvim",
	opts = {
		notify_on_error = true,
		-- disable format on save entirely
		format_on_save = false,
		format_after_save = false,
		default_format_options = {
			lsp_format = "fallback",
		},

		-- (optional) define your formatters here
		formatters_by_ft = {
			lua = { "stylua" },
			cpp = { "clang-format" },
			cmake = { "gersemi" },
		},
	},
}
