local util = require("lazyvim.util")
local root = util.root.get()

return {
	name = "CMake Configure (preset)",
	builder = function()
		return {
			cmd = { "cmake" },
			args = { "--preset", "default" },
			--cwd = "/home/fatih/Projects/Nodeverse",
			cwd = root,
			components = {
				"default",
				"on_output_quickfix",
				{ "on_exit_set_status", success_codes = { 0 } },
			},
		}
	end,
	condition = {
		filetype = { "cpp", "c" },
		exists = { "CMakePresets.json" },
	},
}
