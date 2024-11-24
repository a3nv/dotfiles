return {
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
      { "L3MON4D3/LuaSnip" }, -- Snippets plugin
    },
    config = function()
      local lsp = require("lsp-zero").preset({
        name = "recommended",
        manage_nvim_cmp = true,
        set_lsp_keymaps = true,
        suggest_lsp_servers = false,
      })

      -- Configure LSP servers
      lsp.ensure_installed({
        "jdtls", -- Java
        "clangd", -- C, C++
        "tsserver", -- TypeScript
        "kotlin_language_server", -- Kotlin
      })
      local cmp = require("cmp")
      cmp.setup({
        mapping = {
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Fix Enter to confirm selection
          ["<Tab>"] = cmp.mapping.select_next_item(), -- Navigate down
          ["<S-Tab>"] = cmp.mapping.select_prev_item(), -- Navigate up
          ["<C-Space>"] = cmp.mapping.complete(), -- Manually trigger completion
        },
      })
      lsp.setup()
    end,
  },
}
