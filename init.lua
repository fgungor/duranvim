require("config.options")
require("config.keybinds")
require("config.lazy")

if vim.g.neovide then
	-- Put anything you want to happen only in Neovide here
	vim.g.neovide_opacity = 1.0
	vim.g.neovide_normal_opacity = 0.95
	vim.g.neovide_cursor_trail_size = 0.0
	vim.g.neovide_cursor_animation_length = 0.05
	vim.g.neovide_fullscreen = true
	vim.o.guifont = "JetBrainsMono NFM"
end
