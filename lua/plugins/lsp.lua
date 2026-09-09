return {
  {
    "williamboman/mason.nvim", -- Установщик серверов
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- Список серверов для твоих задач
        ensure_installed = { "clangd", "kotlin_language_server", "pyright" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig", -- Настройка самих серверов
    config = function()
      vim.lsp.config('clangd', {})
      vim.lsp.config('kotlin_language_server', {})
      vim.lsp.config('pyright', {})

      vim.lsp.enable({'clangd', 'kotlin_language_server', 'pyright'})
    end
  }
}
