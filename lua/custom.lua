

local function snip()
	vim.cmd.PackerLoad('friendly-snippets')
end

local function folds()
	vim.cmd.PackerLoad('nvim-ufo')
end

local function movements()
	vim.cmd.PackerLoad('move.nvim')
end

local wk = require("which-key")
wk.register({
	l = {
		name = "Load",
		s = {function() snip() end, "Load Snippets" },
		c = {"<cmd>ColorizerToggle<Cr>" , "Load Colorizer" },
		f = {function() folds() end, "Load Folding" },
		m = {function() movements() end , "Load Move" }
	}
}, {prefix = "<leader>"})

