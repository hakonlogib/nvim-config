local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()


lsp.setup()

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)

vim.keymap.set('n', '<C-a>', vim.lsp.buf.code_action, {})
