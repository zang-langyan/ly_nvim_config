vim.g.mapleader = "`"

local keymap = vim.keymap

-- source config
-- keymap.set("n", "<leader>S", ":luafile %<CR>")

-- clear search
keymap.set("n", "<leader>cs", ':let @/ = ""<CR>')

-- cursor switch
keymap.set("n", "<leader>cc", ":set cursorcolumn!<CR>")
keymap.set("n", "<leader>cl", ":set cursorline!<CR>")

-- 视觉模式 --
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- 正常模式 --
-- 新增窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平分割窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直分割窗口
-- 窗口跳跃
keymap.set("n", "<leader>ww" , "<C-w>w")

-- 插件
-- nvim-tree
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")


-- lsp Jump
keymap.set("n", "<leader>jd", ":lua vim.lsp.buf.declaration()<CR>")
keymap.set("n", "<leader>ji", ":lua vim.lsp.buf.definition()<CR>")
