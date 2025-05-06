require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local tmux = require "tmux"
local dap = require "dap"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>rs", function()
  vim.lsp.buf.rename()
end, { desc = "Rename the symbol at cursor" })

-- tmux navigation
map("n", "<C-h>", function()
  tmux.move_left()
end)
map("n", "<C-j>", function()
  tmux.move_bottom()
end)
map("n", "<C-k>", function()
  tmux.move_top()
end)
map("n", "<C-l>", function()
  tmux.move_right()
end)

-- DAP
map("n", "<leader>dba", function()
  dap.toggle_breakpoint()
end, { desc = "Toggle breakpoint" })
map("n", "<leader>dbc", function()
  dap.continue()
end, { desc = "Continue debugging" })
map("n", "<leader>dbso", function()
  dap.step_over()
end, { desc = "Step over" })
map("n", "<leader>dbsi", function()
  dap.step_into()
end, { desc = "Step into" })
map("n", "<leader>dbsO", function()
  dap.step_out()
end, { desc = "Step out" })
