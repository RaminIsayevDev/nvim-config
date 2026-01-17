return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        -- Установка парсеров для твоих основных языков
        ensure_installed = { "c", "cpp", "lua", "vim", "kotlin", "python" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
