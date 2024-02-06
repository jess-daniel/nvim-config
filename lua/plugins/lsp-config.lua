return {
  {
    "williamboman/mason.nvim",
    config = function()
    require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "ansiblels",
          "astro",
          "bashls",
          "cssls",
          "dockerls",
          "docker_compose_language_service",
          "html",
          "jsonls",
          "tsserver",
          "lua_ls",
          "marksman",
          "intelephense",
          "jedi_language_server",
          "rust_analyzer",
          "sqlls",
          "tailwindcss",
          "terraformls",
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.rust_analyzer.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set({'n'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
