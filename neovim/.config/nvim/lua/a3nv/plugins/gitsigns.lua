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
    }
  end,
}

