local function gitcommit_autocmd()
    vim.opt.textwidth = 72
    vim.opt.textwidth = 73
end

local function c_autocmd()
    vim.opt.colorcolumn = '81'
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true
end

local function cpp_autocmd()
    vim.opt.colorcolumn = '101'
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true
end

local function rust_autocmd()
    vim.opt.colorcolumn = '101'
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true
end

local function go_autocmd()
    vim.opt.colorcolumn = '0'
    vim.opt.tabstop = 8
    vim.opt.shiftwidth = 8
    vim.opt.expandtab = false
end

local function make_autocmd()
    vim.opt.colorcolumn = '81'
    vim.opt.tabstop = 8
    vim.opt.shiftwidth = 8
    vim.opt.expandtab = false
end

local function python_autocmd()
    vim.opt.colorcolumn = '81'
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true
end

local function trim_trailing_whitespace()
    local view = vim.fn.winsaveview()
    vim.cmd [[keepp %s/\\s\\+$//e]]
    vim.cmd 'update'
    vim.fn.winrestview(view)
end

vim.api.nvim_create_autocmd({ 'FileType' }, {
        pattern = 'gitcommit',
        callback = gitcommit_autocmd,
    }
)

vim.api.nvim_create_autocmd({ 'FileType' }, {
        pattern = 'c',
        callback = c_autocmd,
    }
)

vim.api.nvim_create_autocmd({ 'FileType' }, {
        pattern = 'cpp',
        callback = cpp_autocmd,
    }
)

vim.api.nvim_create_autocmd({ 'FileType' }, {
        pattern = 'rust',
        callback = rust_autocmd,
    }
)

vim.api.nvim_create_autocmd({ 'FileType' }, {
        pattern = 'go',
        callback = go_autocmd,
    }
)

vim.api.nvim_create_autocmd({ 'FileType' }, {
        pattern = 'make',
        callback = make_autocmd,
    }
)

vim.api.nvim_create_autocmd({ 'FileType' }, {
        pattern = 'python',
        callback = python_autocmd,
    }
)

vim.api.nvim_create_autocmd({ 'FileType' }, {
        pattern = 'python',
        callback = python_autocmd,
    }
)

vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
        pattern = '*',
        command = '%s/\\s\\+$//e',
    }
)

vim.api.nvim_create_autocmd({ 'LspAttach' }, {
        callback = function(args)
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            client.server_capabilities.semanticTokensProvider = nil
        end
    }
)
