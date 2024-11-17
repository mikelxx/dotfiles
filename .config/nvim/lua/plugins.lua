local path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(path) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        '--depth=1',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        path
    })
end

local plugins = {
    { 'nvim-treesitter/nvim-treesitter' },
    { 'NMAC427/guess-indent.nvim' },
    { 'nvim-lualine/lualine.nvim' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { 'nvim-lua/plenary.nvim' },
    { 'nvim-telescope/telescope.nvim' },
    { 'cocateh/vim-gruber-darker' }
}

require('lazy').setup(plugins)

-- This order is for a reason, becuase on Windows clang tends to put itself in
-- the PATH by default, and MSVC does not, and for some reason I always have some
-- bootleg version of gcc in the PATH
require('nvim-treesitter.install').compilers = { 'clang', 'gcc' }

require('nvim-treesitter.configs').setup {
    ensure_installed = { 'vimdoc', 'lua' },
    auto_install = true
}

require('guess-indent').setup {}

require('lualine').setup {
    options = {
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '', right = ''}
    },
    sections = {
        lualine_b = {
            'branch',
            'diff',
            {
                'diagnostics',
                sections = { 'error', 'warn', 'info', 'hint' },
                symbols = { error = '✘', warn = '!', info = '▲', hint = '⚑' },
                colored = true
            }
        },
        lualine_x = {
            'encoding',
            {
                'fileformat',
                symbols = {
                    unix = 'unix',
                    dos = 'dos',
                    mac = 'mac',
                }
            },
            'filetype'
        }
    }
}

local cmp = require('cmp')
local luasnip = require('luasnip')

local has_words_before = function()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
    mapping = {
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
                cmp.confirm()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
                cmp.select_next_item()
            elseif has_words_before() then
                cmp.complete()
                cmp.select_next_item()
            else
                fallback()
            end
        end, { 'i', 's'}),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's'})
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }
    }, {
        { name = 'buffer' }
    }),
    completion = {
        autocomplete = false
    }
}

local lspconfig = require('lspconfig')

lspconfig.rust_analyzer.setup {
    autostart = false
}

lspconfig.clangd.setup {
    autostart = false
}

lspconfig.pyright.setup {
    autostart = false
}

vim.diagnostic.config({
    virtual_text = {
        prefix = '●',
    },
    underline = false
})

vim.fn.sign_define('DiagnosticSignError', {
    texthl = 'DiagnosticSignError',
    text = '✘',
    numhl = ''
})

vim.fn.sign_define('DiagnosticSignWarn', {
    texthl = 'DiagnosticSignWarn',
    text = '!',
    numhl = ''
})

vim.fn.sign_define('DiagnosticSignInfo', {
    texthl = 'DiagnosticSignInfo',
    text = '▲',
    numhl = ''
})

vim.fn.sign_define('DiagnosticSignHint', {
    texthl = 'DiagnosticSignHint',
    text = '⚑',
    numhl = ''
})

require('telescope').setup {}

vim.cmd.colorscheme('high')
