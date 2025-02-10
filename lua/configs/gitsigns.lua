local M = {}

M.opts = function()
  local gitsigns = require("gitsigns")
  local opts = require("nvchad.configs.gitsigns")

  local map = vim.keymap.set

  -- opts.numhl = true
  -- opts.current_line_blame = true
  opts.diff_opts = {
    vertical = true,
    split = "rightbelow"
  }

  map("n", "<leader>gD", function()
    gitsigns.setqflist("all")
  end, { desc = "gitsigns: [g]it [Diff] all files"})
  map("n", "<leader>gd", gitsigns.diffthis, { desc = "gitsigns: [g]it [d]iff this file" })

  local function on_attach_with_custom_keymaps(bufnr)
  end

  return opts
end

return M

