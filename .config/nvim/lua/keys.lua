vim.keymap.set('', '<F5>', ':make <bar> :copen<CR>')

local telescope_builtins = require('telescope.builtin')

vim.keymap.set('n', 'gr', telescope_builtins.live_grep, {})
vim.keymap.set('n', '<C-p>', telescope_builtins.find_files, {})
vim.keymap.set('n', 'zo', vim.diagnostic.open_float, { noremap = true, silent = true })
vim.keymap.set('n', 'zn', vim.diagnostic.goto_next, { noremap = true, silent = true })
vim.keymap.set('n', 'zp', vim.diagnostic.goto_prev, { noremap = true, silent = true })
vim.keymap.set('n', '<C-]>', vim.lsp.buf.definition, { noremap = true, silent = true })
