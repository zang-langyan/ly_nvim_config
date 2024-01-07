require("mason").setup({
  ui = {
    icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
    }
  }
})

require("mason-lspconfig").setup(
  {
    ensure_installed = {
      "lua_ls",
    },
  }
)

local on_attach = function(client)
    require'completion'.on_attach(client)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}

require("lspconfig").clangd.setup {
  cmd = {
    "clangd",
    "--query-driver='/usr/bin/g++'",
  },
}

require("lspconfig").cmake.setup {
}

require("lspconfig").fortls.setup {
}

require("lspconfig").pyright.setup{
}

require('lspconfig').rust_analyzer.setup({
  on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})
