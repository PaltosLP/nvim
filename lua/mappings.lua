
local wk = require 'which-key'
vim.g.mapleader = ' '


-- wk.register(mapping, opts)
wk.register({
  	f = {
    	name = "Telescope", -- optional group name
    	f = { "<cmd>Telescope find_files<cr>", "Find File" },
    	g = { "<cmd>Telescope live_grep<cr>", "Search Text" },
		b = { "<cmd>Telescope buffers<Cr>", "Search Buffer" },
		h = { "<cmd>Telescope help_tags<Cr>", "Search Help Tags" },
  	},
  	p = {
	  	name = "Packer",
	  	s = { "<cmd>PackerStatus<Cr>", "Packer Status" },
		S = { "<cmd>PackerSync<Cr>", "Packer Sync" },
  	},
  	['<leader>'] = {
	  	name = "Special Operations",
	  	s = { "<cmd>so %<Cr>", "Source current File" },
		r = { "<cmd>call number_set#relative_numb()<Cr>", "Set Relativ Number" },
		n = { "<cmd>call number_set#normal_numb()<Cr>", "Set Number" },
		i = { "<cmd>IndentBlanklineToggle<Cr>", "Toggle Indent Line" },
		q = { "<cmd>q<Cr>", "Quit" },
		f = { "<cmd>q!<Cr>", "Unsaved Quit" },
		w = { "<cmd>wq<Cr>", "Save Quit" },

  	},
	x = {
		name = 'Trouble',
		x = { '<cmd>TroubleToggle<Cr>', 'Toggle Trouble' },
		q = { '<cmd>TroubleToggle quickfix<Cr>', 'Quickfix' },
		d = { '<cmd>TroubleToggle document_diagnostics<Cr>', 'Doc Diagnostic'},
	},
	a = {
		name = 'Aerial',
		a = { '<cmd>AerialOpen<Cr>', 'Open Aerial' },
		t = { '<cmd>AerialToggle<Cr>', 'Toggle Aerial' },
	}


}, { mode = 'n', prefix = "<leader>" })

wk.register({
	['<C-t>'] = { "<cmd>NvimTreeToggle<Cr>", "Toggle Nvim-Tree" },
	['<C-a>'] = { "<cmd>call run_file#Run_File()<Cr>", "Run File" },
	['<C-s>'] = { "<cmd>call save#w()<Cr>", "Save File" },
	-- ['<C-r>'] = { "<cmd>call number_set#relative_numb()<Cr>", "Set Relativ Number" },
	-- ['<C-e>'] = { "<cmd>call number_set#normal_numb()<Cr>", "Set Number" },
	-- ['<C-i>'] = { "<cmd>IndentBlanklineToggle<Cr>", "Toggle Indent Line" },
	['<C-h>'] = { "<cmd>WhichKey<Cr>", "Toggle WhichKey"},
	['<ESC>'] = { "<cmd>nohl<Cr>", "Remove Search Highlights" },

	-- Q = {
	-- 	name = 'Quit',
	-- 	q = { "<cmd>q<Cr>", "Quit" },
	-- 	f = { "<cmd>q!<Cr>", "Unsaved Quit" },
	-- 	s = { "<cmd>wq<Cr>", "Save Quit" },
	-- },

}, { mode = 'n' })

wk.register({
	jj = { "<ESC>", "ESC" },
}, { mode = 'i' })

wk.register({
	['<C-c>'] = { '"*y<Cr>', "Copy" },
}, { mode = 'v' })
