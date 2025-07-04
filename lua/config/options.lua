vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.g.inlay_hints_visible = false
vim.opt.listchars = {
	tab = "  ", -- or "▸ " or just "  "
	trail = "·",
	nbsp = "␣",
	extends = "⟩",
	precedes = "⟨",
}
vim.bo.autoindent = true
vim.bo.smartindent = false -- optional
vim.bo.cindent = true -- enable C/C++ specific indentation
