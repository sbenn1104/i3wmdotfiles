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
        ensure_installed = { "lua_ls", "jedi_language_server", "rust_analyzer" }
      })
    end
  },
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    config = function()
      require('mason-tool-installer').setup({
        -- Install these linters, formatters, debuggers automatically
        ensure_installed = {
          'black',
          'debugpy',
          'flake8',
          'isort',
          'mypy',
          'pylint',
        },
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    cmd = function()
      local lspconfig = require 'lspconfig'
      local configs = require 'lspconfig.configs'
      if not configs.codewhisperer then
        configs.codewhisperer = {
          default_config = {
            -- Add the codewhisperer to our PATH or BIN folder
            cmd = { "cwls" },
            root_dir = lspconfig.util.root_pattern("packageInfo", "package.json", "tsconfig.json", "jsconfig.json",
              ".git"),
            filetypes = { 'java', 'python', 'typescript', 'javascript', 'csharp', 'ruby', 'kotlin', 'shell', 'sql', 'c', 'cpp', 'go', 'rust', 'lua' },
          },
        }
      end
      lspconfig.codewhisperer.setup {}
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.jedi_language_server.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
   },
}
