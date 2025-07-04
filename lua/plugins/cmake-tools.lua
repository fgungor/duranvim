return {
	"Civitasv/cmake-tools.nvim",
	opts = {
		cmake_regenerate_on_save = false,
		cmake_executor = {
			name = "overseer",
			opts = {
				new_task_opts = {
					strategy = {
						"terminal",
						direction = "horizontal",
						auto_scroll = true,
						quit_on_exit = "success",
					},
					components = {
						{ "default" },
						{
							"on_output_quickfix",
							set_diagnostics = true,
							open = false,
						},
					},
				},
				on_new_task = function(task)
					require("overseer").open({ enter = false, direction = "bottom" })
				end,
			},
		},
	},
}
