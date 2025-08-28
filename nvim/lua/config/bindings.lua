vim.keymap.set('i','jk','<ESC>')
vim.keymap.set('n','<Leader>E', vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- great remaps stolen from primeagen
vim.keymap.set("x", "<leader>p", [["_dP]])          -- yanks to nvim register
vim.keymap.set("n", "<leader>Y", [["+Y]])           -- yanks to system clipboard
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])    -- deletes to black hole register

-- splits like no other
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>")
vim.keymap.set("n", "<leader>sh", ":split<CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-S-h>", "<C-w><")
vim.keymap.set("n", "<C-S-j>", "<C-w>-")
vim.keymap.set("n", "<C-S-k>", "<C-w>+")
vim.keymap.set("n", "<C-S-l>", "<C-w>>")
vim.keymap.set("n", "<leader>bd", ":bd!<CR>")

-- LSP shit
vim.keymap.set('n','<leader>lr', vim.lsp.buf.rename)
vim.keymap.set('n','<leader>la', vim.lsp.buf.code_action)
vim.keymap.set('n','gd', vim.lsp.buf.definition)
vim.keymap.set('n','gI', vim.lsp.buf.implementation)
vim.keymap.set('n','<leader>D', vim.lsp.buf.type_definition)
vim.keymap.set('n','<leader>K', vim.lsp.buf.hover)

-- rnvimr
vim.keymap.set('n','<leader>e',":RnvimrToggle<CR>")

-- trouble
vim.keymap.set('n','<leader>lj','<cmd>Trouble diagnostics jump=true next<cr>')
vim.keymap.set('n','<leader>lk','<cmd>Trouble diagnostics jump=true prev<cr>')
vim.keymap.set('n','<leader>ll','<cmd>Trouble diagnostics toggle<cr>')
vim.keymap.set('n','<leader>lt','<cmd>Trouble diagnostics toggle filter.buf=0<cr>')
