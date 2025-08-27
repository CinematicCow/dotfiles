return{
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',
    },
    config = function()
        local lspconfig = require('lspconfig')
        local mason_lspconfig = require('mason-lspconfig')
        local cmp = require('cmp')

        cmp.setup({
            sources = {
                {name = 'nvim_lsp'},
                {name = 'luasnip'},
                {name = 'buffer'},
                {name = 'path'},
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>']= cmp.mapping.scroll_docs(-4),
                ['<C-f>']= cmp.mapping.scroll_docs(4),
                ['<C-Space>']= cmp.mapping.complete(),
                ['<CR>']= cmp.mapping.confirm({select = true}),
            }),
        })

        -- autocomplete for nvim lua api
        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                    runtime = {
                        version = "LuaJIT"
                    },
                    diagnostics = {
                        globals = { 'vim' }
                    },
                    workspace = {
                        library = {
                            [vim.fn.expand('$VIMRUNTIME/lua')]=true,
                            [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')]=true,
                        },
                        maxPreload = 1000000,
                        preloadFileSize = 10000,
                    },
                    telemetry = {
                        enable=false,
                    },
                },
            },
        })

        mason_lspconfig.setup({
            ensure_installed = { 'lua_ls' },
            handlers = {
                function(server_name)
                    lspconfig[server_name].setup({})
                end,
            },
        })
    end
}
