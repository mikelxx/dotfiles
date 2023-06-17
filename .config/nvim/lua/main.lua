
vim.cmd [[packadd packer.nvim]]

local packer = require('packer');

packer.startup(function(use)
    use 'NMAC427/guess-indent.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'neovim/nvim-lspconfig'
    -- use 'hrsh7th/cmp-buffer'
    -- use 'hrsh7th/cmp-path'
    -- use 'hrsh7th/cmp-cmdline'
    -- use 'hrsh7th/cmp-nvim-lsp'
    -- use 'hrsh7th/nvim-cmp'
    -- use 'L3MON4D3/LuaSnip'
end)

local lspconfig = require('lspconfig')
local cmp = require('cmp')
local guess_indent = require('guess-indent')
local lualine = require('lualine')
local luasnip = require('luasnip')

local has_words_before = function()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

lualine.setup {
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

guess_indent.setup {}

-- cmp.setup {
--     snippet = {
--         expand = function(args)
--             luasnip.lsp_expand(args.body)
--         end
--     },
--     mapping = {
--         ['<Tab>'] = cmp.mapping(function(fallback)
--             if cmp.visible() then
--                 cmp.select_next_item()
--                 cmp.confirm()
--                 cmp.confirm();
--             elseif luasnip.expand_or_jumpable() then
--                 luasnip.expand_or_jump()
--                 cmp.select_next_item()
--                 cmp.confirm()
--             elseif has_words_before() then
--                 cmp.complete()
--                 cmp.select_next_item()
--                 cmp.confirm()
--             else
--                 fallback()
--             end
--         end, { 'i', 's'}),
--         ['<S-Tab>'] = cmp.mapping(function(fallback)
--             if cmp.visible() then
--                 cmp.select_prev_item()
--             elseif luasnip.jumpable(-1) then
--                 luasnip.jump(-1)
--             else
--                 fallback()
--             end
--         end, { 'i', 's'})
--     },
--     sources = cmp.config.sources({
--         { name = 'nvim_lsp' },
--         { name = 'luasnip' }
--     }, {
--         { name = 'buffer' }
--     }),
--     completion = {
--         autocomplete = false
--     }
-- }

lspconfig.rust_analyzer.setup {
    autostart = false;
}

lspconfig.clangd.setup {
    autostart = false;
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

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        client.server_capabilities.semanticTokensProvider = nil
    end
});
