return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require('gitsigns').setup {
      signs = {
        add          = { text = '+' },
        change       = { text = '~' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
      },
      numhl = false,
      linehl = false,
      watch_gitdir = {
        interval = 1000,
      },
      current_line_blame = false,
      sign_priority = 6,
      update_debounce = 100,
      status_formatter = nil, -- Use default

      -- Keybindings for Gitsigns
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        local opts = { noremap = true, silent = true }

        -- Preview hunk
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ph", "<cmd>Gitsigns preview_hunk<CR>", opts)

        -- Blame line
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>bl", "<cmd>Gitsigns blame_line<CR>", opts)

        -- Toggle word diff
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>wd", "<cmd>Gitsigns toggle_word_diff<CR>", opts)
      end,
    }
  end,
}

