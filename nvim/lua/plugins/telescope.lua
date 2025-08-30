return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' },
    },
    config = function()
        require('telescope').setup({
            defaults = {
                layout_config = {
                    horizontal = {
                        width = 0.6,
                        height = 0.4,
                        preview_width = 0.5
                    },
                    prompt_position = "top",
                },
                sorting_strategy = "ascending",
                mappings = {
                    i = {
                        ['C-k'] = 'move_selection_previous',
                        ['C-j'] = 'move_selection_next',
                    }
                }
            }
        })

        vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references)
        vim.keymap.set('n', '<leader>lss', require('telescope.builtin').lsp_document_symbols)
        vim.keymap.set('n', '<leader>lws', require('telescope.builtin').lsp_workspace_symbols)
        vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files)
        vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep)
        vim.keymap.set('n', '<leader>fb', function()
            require('telescope.builtin').buffers({
                attach_mappings = function(_, map)
                    map('i', '<C-d>', function(prompt_bufnr)
                        local selection = require('telescope.actions.state').get_selected_entry()
                        require('telescope.actions').close(prompt_bufnr)
                        vim.api.nvim_buf_delete(selection.bufnr, { force = true })
                    end)
                    return true
                end
            })
        end)
    end,
}
