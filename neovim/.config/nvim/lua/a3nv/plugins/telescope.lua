return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" }, -- Ensure the dependency is included
  config = function()
    local builtin = require("telescope.builtin")

    -- Key mappings
    vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Find [P]roject [F]iles" })
    vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Git Files" })
    vim.keymap.set("n", "<leader>ps", function()
      local input = vim.fn.input("Grep > ")
      builtin.grep_string({ search = input })
    end, { desc = "Search Project [P]roject [S]tring" })
  end,
}

