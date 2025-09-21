return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')

      lspconfig.lua_ls.setup ({})
      lspconfig.ruby_lsp.setup ({})
    end
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = { "ruby_lsp", "sorbet", "lua_ls" },
      automatic_enable = true,
    })

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    require("lspconfig").ruby_lsp.setup({ capabilities = capabilities })

    require("lspconfig").sorbet.setup({
      capabilities = capabilities,
      root_dir = require("lspconfig.util").root_pattern("sorbet/config"),
    })

    require("lspconfig").lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          workspace = { checkThirdParty = false },
          telemetry = { enable = false },
          diagnostics = { globals = { "vim" } },
        },
      },
    })
    end,
}
