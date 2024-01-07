vim.g.mapleader = "`"

local keymap = vim.keymap

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
