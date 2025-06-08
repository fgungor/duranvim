local util = require("lazyvim.util")
local root = util.root.get()

return {
	name = "CMake Configure (preset)",
	builder = function()
		return {
			cmd = { "cmake" },
			args = { "--preset", "default" },
			cwd = root,
			components = {
				"default",
				"on_output_quickfix",
				{ "open_output", on_start = "always" },
				{ "on_exit_set_status", success_codes = { 0 } },
			},
		}
	end,
	condition = {
		exists = { "CMakePresets.json" },
	},
}
