local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup({
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require('which-key').setup({
                {
                    mode = "n",     -- NORMAL mode
                    prefix = "<leader>",
                    buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
                    silent = true,  -- use `silent` when creating keymaps
                    noremap = true, -- use `noremap` when creating keymaps
                    nowait = false, -- use `nowait` when creating keymaps
                    expr = false,   -- use `expr` when creating keymaps
                }
            })
        end,
    },
    { 'rose-pine/neovim',                name = 'rose-pine' },
    { 'kevinhwang91/rnvimr',             name = 'rnvimr' },

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    { "theprimeagen/refactoring.nvim" },
    { "mbbill/undotree" },
    { "nvim-treesitter/nvim-treesitter-context" },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {
            { map_cr = true }
        }
    },
    {
        'mrcjkb/rustaceanvim',
        version = '^3', -- Recommended
        ft = { 'rust' },
    },
    { "shurizzle/inlay-hints.nvim" },
    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        },
        keys = {
            { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    },
    { 'neovim/nvim-lspconfig' },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'L3MON4D3/LuaSnip' },
    { 'saadparwaiz1/cmp_luasnip' },
    {'rafamadriz/friendly-snippets'}
})
