local util = require("lazyvim.util")

return {
	name = "CMake Build",
	builder = function()
		return {
			cmd = { "cmake" },
			args = { "--build", "build" },
			cwd = util.root.get(),
			components = {
				"default",
				{ "open_output", on_start = "always" },
				{ "on_output_quickfix", open_on_exit = "failure" },
				{ "on_exit_set_status", success_codes = { 0 } },
			},
		}
	end,
	condition = {
		filetype = { "cpp", "c" },
		exists = { "CMakePresets.json" },
	},
}
