return {
	"folke/snacks.nvim",
	opts = {
		indent = {
			enabled = false,
		},
		styles = {
			duranzen = {
				enter = true,
				fixbuf = false,
				minimal = false,
				width = 120,
				height = 120,
				backdrop = { transparent = true, blend = 10 },
				keys = { q = false },
				zindex = 40,
				wo = {
					winhighlight = "NormalFloat:Normal",
				},
				w = {
					snacks_main = true,
				},
			},
		},
		zen = {
			win = { style = "duranzen" },
			zoom = {
				toggles = {},
				show = { statusline = true, tabline = true },
				win = {},
			},
		},
	},
}
