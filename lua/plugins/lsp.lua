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
      local lspconfig = require("lspconfig")
      lspconfig.clangd.setup({}) -- Для C/C++ (ESP32)
      lspconfig.kotlin_language_server.setup({}) -- Для Kotlin
    end
  }
}
