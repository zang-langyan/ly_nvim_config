-- 默认不开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim.opt.termguicolors = true
require("nvim-tree").setup(
  {
    view = {
      adaptive_size = true,
    },
    filters = {
      git_ignored = false,
    }
  }
)
