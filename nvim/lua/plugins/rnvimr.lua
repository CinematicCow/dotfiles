return{
    "kevinhwang91/rnvimr",
    config = function ()
        vim.g.rnvimr_enable_ex = 1
        vim.g.rnvimr_enable_picker = 1
        vim.g.rnvimr_draw_border = 1
        vim.g.rnvimr_hide_gitignore = 1
        vim.g.rnvimr_enable_bw = 1
        vim.g.rnvimr_ranger_cmd = {'ranger', '--cmd=set draw_borders both'}
        vim.g.rnvimr_pick_enable = 1
    end
}
