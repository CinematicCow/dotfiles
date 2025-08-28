return{
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' },
    },
    config = function ()
        require('telescope').setup({
            defaults = {
                mappings = {
                    i = {
                        ['C-k'] = 'move_selection_previous',
                        ['C-j'] = 'move_selection_next',
                    }
                }
            }
        })

        vim.keymap.set('n','gr', require('telescope.builtin').lsp_references)
        vim.keymap.set('n','<leader>lss', require('telescope.builtin').lsp_document_symbols)
        vim.keymap.set('n','<leader>lws', require('telescope.builtin').lsp_workspace_symbols)
    end,
}
