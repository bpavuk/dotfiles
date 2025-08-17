require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "CursorHold", "FocusGained" }, {
  pattern = "*",
  command = "checktime",
})

