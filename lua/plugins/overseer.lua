return {
	"stevearc/overseer.nvim",
	opts = {
		templates = {
			"builtin",
			"user.cmake_configure",
			"user.cmake_build",
		},
		task_list = {
			direction = "bottom",
			min_height = 15,
			max_height = 25,
		},
	},
	keys = {
		{
			"<leader>cc",
			function()
				require("overseer").run_template({ name = "CMake Configure (preset)" })
			end,
			desc = "CMake Configure",
		},
		{
			"<leader>cb",
			function()
				require("overseer").run_template({ name = "CMake Build" })
			end,
			desc = "CMake Build",
		},
	},
}
