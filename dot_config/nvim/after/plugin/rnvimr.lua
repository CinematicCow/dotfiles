vim.g.rnvimr_enable_ex = 1
vim.g.rnvimr_draw_border = 1
vim.g.rnvimr_pick_enable = 1
vim.g.rnvimr_bw_enable = 1
vim.g.rnvimr_ranger_cmd = {'ranger', '--cmd=set column_ratios 1,1', '--cmd=set draw_borders both'}
vim.g.rnvimr_presets = {{width = 0.800, height = 0.800}}

-- Map leader + r to toggle Ranger
vim.api.nvim_set_keymap('n', '<leader>r', ':RnvimrToggle<CR>', {noremap = true})

