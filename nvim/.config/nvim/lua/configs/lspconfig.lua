require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "somesass_ls",
  "bashls",
  "clangd",
  "slint_lsp",
  "pyright",
}
vim.lsp.enable(servers)

vim.lsp.config('html', {
  filetypes = { "html", "htmldjango", "superhtml" }
})
vim.lsp.config('somesass_ls', {
  root_dir = function(...)
    return require("lspconfig.util").root_pattern ".git"(...)
  end,
  init_options = {
    workspace = root_dir,
  },
})

vim.lsp.config('pyright', {
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        typeCheckingMode = "basic",
      },
    },
  },
})
