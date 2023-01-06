-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
-- require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({

	NvimTreeNormal = { fg = "none", bg = "none" },

	hijack_cursor = true,
	hijack_netrw = true,
	open_on_setup = true,
	open_on_setup_file = true,
	sync_root_with_cwd = true,
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
				{ key = "p", action = "dir_down"},
			},
		},
	},
	renderer = {
		group_empty = true,
		indent_markers = {
			enable = true,
		},
	},
	filters = {
		dotfiles = true,
	},
})
