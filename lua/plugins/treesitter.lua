return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			highlight = { enable = true },
			indent = { enable = false },
			autotag = { enable = true },
			ensure_installed = { "lua", "cpp", "c", "cmake" },
			auto_install = false,
		})
	end,
}
