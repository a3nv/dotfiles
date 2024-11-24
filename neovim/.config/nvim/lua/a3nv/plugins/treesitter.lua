return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- Automatically runs `:TSUpdate` after plugin installation
  config = function()
    require("nvim-treesitter.configs").setup {
      -- A list of parser names, or "all"
      ensure_installed = { "javascript", "typescript", "c", "lua", "vim", "vimdoc", "query" },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering a buffer
      auto_install = true,

      highlight = {
        enable = true,
        -- Using both regex and tree-sitter highlighting can cause duplication
        additional_vim_regex_highlighting = false,
      },
    }
  end,
}

