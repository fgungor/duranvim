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
}
