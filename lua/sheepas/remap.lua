vim.g.mapleader = " "							-- Sets <leader> = -space-bar-
vim.keymap.set("n", "<leader>n", vim.cmd.Ex)	-- space+n = file explorer (normal mode)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")	-- shfit+j = move selection up   (visual mode)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")	-- shfit+k = move selection down (visual mode)

vim.keymap.set("n", "J", "mzJ`z")				-- shift+j = append above line with current line, but cursor doesnt move (normal mode)
vim.keymap.set("n", "<C-d>", "<C-d>zz")			-- ctrl+d  = half page jump up,   but cursor stays in middle of screen (normal mode)
vim.keymap.set("n", "<C-u>", "<C-u>zz")			-- ctrl+u  = half page jump down, but cursor stays in middle of screen (normal mode)
vim.keymap.set("n", "n", "nzzzv")				-- n = search, but cursor stays in the middle
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])		-- space+p = paste without overwriting yank buffer

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- space+y = yank to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]]) -- space+d = delete without overwriting buffer

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")			-- ctrl+c = esc

vim.keymap.set("n", "q", "<nop>")				-- disables q
vim.keymap.set("n", "Q", "<nop>")				-- disables shift+q
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- ctrl+f = change projects
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) 

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")	-- quick fix navigation
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- space+s = replace all instances of current word
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) -- space+x = creates executable and executes

