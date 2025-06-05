return {
	{
		"mfussenegger/nvim-dap",
		lazy = false,
		config = function()
			local dap = require("dap")
			vim.keymap.set("n", "<F5>", function()
				dap.continue()
			end)
			vim.keymap.set("n", "<F10>", function()
				dap.step_over()
			end)
			vim.keymap.set("n", "<F11>", function()
				dap.step_into()
			end)
			vim.keymap.set("n", "<S-F11>", function()
				dap.step_out()
			end)
			vim.keymap.set("n", "<F9>", function()
				dap.toggle_breakpoint()
			end)
			vim.keymap.set("n", "<S-F5>", function()
				dap.terminate()
			end)
		end,
	},
}
