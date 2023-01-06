-- NeoVim setup

vim.api.nvim_set_option('mouse', 'a')	-- Enable mouse

vim.opt.nu = true				-- Enable line numbers
vim.opt.relativenumber = true	-- Enable line numbers realitive to current line

vim.opt.tabstop = 4				
vim.opt.softtabstop = 4			
vim.opt.shiftwidth = 4			
vim.opt.expandtab = false		

vim.opt.smartindent = true		-- Reacts to the syntax/style of the code you are editing (especially for C). Used with 'autoindent'

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

