vim.keymap.set('', '<F5>', ':make <bar> :copen<CR>')

local telescope_builtins = require('telescope.builtin')

vim.keymap.set('n', 'gr', telescope_builtins.live_grep, {})
vim.keymap.set('n', '<C-p>', telescope_builtins.find_files, {})
