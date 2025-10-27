return {
  -- Mason itself, for installing LSP servers, DAP servers, linters, etc.
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Bridge between Mason and lspconfig: install & auto-configure your servers
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        -- replace or extend with the servers you use
        ensure_installed = {
          "lua_ls", "pyright",
          "jdtls", "clangd", "ts_ls", "kotlin_language_server",
          "cmake", "dockerls", "docker_compose_language_service",
          "gradle_ls",
        },
        handlers = {
          -- default setup for all servers
          function(server_name)
            require("lspconfig")[server_name].setup({})
          end,
          -- custom Kotlin options
          kotlin_language_server = function()
            require("lspconfig").kotlin_language_server.setup({
              cmd = { "kotlin-language-server" },
              settings = {
                kotlin = { compiler = { version = "2.1.0" } },
              },
            })
          end,
          -- custom clangd options
          clangd = function()
            require("lspconfig").clangd.setup({
              cmd = { "clangd", "--compile-commands-dir=." },
              settings = {
                clangd = {
                  arguments = {
                    "--header-insertion=never",
                    "-I/usr/local/include",
                  },
                },
              },
            })
          end,
        },
      })
    end,
  },

  -- Core LSP config: defaults, capabilities, and keymaps on attach
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      -- add nvim-cmp capabilities to all LSP clients :contentReference[oaicite:0]{index=0}
      local defaults = require("lspconfig").util.default_config
      defaults.capabilities = vim.tbl_deep_extend(
        "force",
        defaults.capabilities,
        require("cmp_nvim_lsp").default_capabilities()
      )

      -- sensible keymaps when LSP attaches :contentReference[oaicite:1]{index=1}
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(event)
          local buf = event.buf
          local function map(lhs, rhs)
            vim.keymap.set("n", lhs, rhs, { buffer = buf })
          end
          map("K",     vim.lsp.buf.hover)
          map("gd",    vim.lsp.buf.definition)
          map("gD",    vim.lsp.buf.declaration)
          map("gi",    vim.lsp.buf.implementation)
          map("go",    vim.lsp.buf.type_definition)
          map("gr",    vim.lsp.buf.references)
          map("gs",    vim.lsp.buf.signature_help)
          map("<F2>",  vim.lsp.buf.rename)
          map("<F4>",  vim.lsp.buf.code_action)
          vim.keymap.set({"n","x"}, "<F3>",
            function() vim.lsp.buf.format({ async = true }) end,
            { buffer = buf }
          )
        end,
      })
    end,
  },

  -- Autocompletion engine + sources
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        sources = {
          { name = "nvim_lsp" },
          { name = "buffer"   },
          { name = "path"     },
          { name = "luasnip"  },
        },
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<CR>"]      = cmp.mapping.confirm({ select = true }),
          ["<Tab>"]     = cmp.mapping.select_next_item(),
          ["<S-Tab>"]   = cmp.mapping.select_prev_item(),
          ["<C-Space>"] = cmp.mapping.complete(),
        }),
      })
    end,
  },
}

