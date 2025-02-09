require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local nomap = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- nvimtree
-- nomap("n", "<C-n>")

-- map("n", "<C-e>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
-- map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- window management
map("n", "<C-v>", "<C-w>v", { desc = "Slit window horizontally" })

map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })

