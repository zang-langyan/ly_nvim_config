local opt = vim.opt
opt.relativenumber = true -- 相对行号开启
opt.number = true -- 行号开启

-- 缩进
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = true

-- 光标行
opt.cursorline = false

-- 鼠标
opt.mouse:append("a")

-- 剪切板
opt.clipboard:append("unnamedplus")

-- 主题与外观
-- vim.cmd[[colorscheme tokyonight]]
-- opt.guifont = "CodeNewRoman Nerd Font Mono"
