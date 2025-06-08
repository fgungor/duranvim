return {
	"Civitasv/cmake-tools.nvim",
	opts = {
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
				}, -- options to pass into the `overseer.new_task` command
				on_new_task = function(task)
					require("overseer").open({ enter = false, direction = "bottom" })
				end, -- a function that gets overseer.Task when it is created, before calling `task:start`
			},
		},
	},
}
