local M = {}

M.opts = function()
  local opts = require("nvchad.configs.nvimtree")

  local function on_attach_with_custom_keymaps(bufnr)
    local api = require("nvim-tree.api")
    local map = vim.keymap.set

    api.config.mappings.default_on_attach(bufnr)

    map("n", "l", api.node.open.edit, { buffer = bufnr, desc = "nvim-tree: Expand directory or open the target file" })
    map("n", "h", api.node.navigate.parent_close, { buffer = bufnr, desc = "nvim-tree: Collapse current directory" })
  end

  opts.on_attach = on_attach_with_custom_keymaps
  opts.actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  }

  return opts
end

M.init = function()
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugn = 1
end

return M
