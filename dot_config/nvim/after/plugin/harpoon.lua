local harpoon = require('harpoon')
harpoon:setup()


-- Set keybinding to open Harpoon window with Telescope
-- vim.keymap.set("n", "<leader>bb", function() toggle_telescope(harpoon:list()) end, { desc = "toggle harpoon" })
-- vim.keymap.set("n", "<leader>ba", function() harpoon:list():append() end, { desc = "add buffer" })
-- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<leader>k", function() harpoon:list():prev() end, { desc = "prev buffer" })
-- vim.keymap.set("n", "<leader>j", function() harpoon:list():next() end, { desc = "next buffer" })


vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = "add buffer" })
vim.keymap.set("n", '<leader>e', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "toggle harpoon" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>k", function() harpoon:list():prev() end, { desc = "prev buffer" })
vim.keymap.set("n", "<leader>j", function() harpoon:list():next() end, { desc = "next buffer" })
