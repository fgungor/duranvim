require("config.options")
require("config.keybinds")
require("config.lazy")

-- Default options:
require("kanagawa").setup({
	compile = false, -- enable compiling the colorscheme
	undercurl = true, -- enable undercurls
	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true },
	statementStyle = { bold = true },
	typeStyle = {},
	transparent = false, -- do not set background color
	dimInactive = false, -- dim inactive window `:h hl-NormalNC`
	terminalColors = true, -- define vim.g.terminal_color_{0,17}
	colors = { -- add/modify theme and palette colors
		palette = {},
		theme = {
			wave = {},
			lotus = {},
			dragon = {},
			all = {},
		},
	},
	overrides = function(colors) -- add/modify highlights
		return {
			Identifier = { fg = colors.palette.lotusViolet1, italic = false },
		}
	end,
	theme = "dragon", -- Load "wave" theme
	background = { -- map the value of 'background' option to a theme
		dark = "dragon", -- try "dragon" !
		light = "lotus",
	},
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")

if vim.g.neovide then
	-- Put anything you want to happen only in Neovide here
	vim.g.neovide_opacity = 1.0
	vim.g.neovide_normal_opacity = 0.95
	vim.g.neovide_cursor_trail_size = 0.0
	vim.g.neovide_cursor_animation_length = 0.05
	vim.g.neovide_fullscreen = true
	vim.o.guifont = "JetBrainsMono NFM"
end
