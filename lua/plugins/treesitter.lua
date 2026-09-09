return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = { "c", "cpp", "lua", "vim", "kotlin", "python" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
