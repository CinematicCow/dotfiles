local harpoon = require('harpoon')
harpoon:setup({})

-- Basic Telescope configuration
local conf = require("telescope.config").values

-- Function to toggle Telescope with Harpoon files
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

-- Set keybinding to open Harpoon window with Telescope
vim.keymap.set("n", "<leader>bb", function() toggle_telescope(harpoon:list()) end, { desc = "toggle harpoon" })
vim.keymap.set("n", "<leader>ba", function() harpoon:list():append() end, { desc = "add buffer" })
-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>k", function() harpoon:list():prev() end, { desc = "prev buffer" })
vim.keymap.set("n", "<leader>j", function() harpoon:list():next() end, { desc = "next buffer" })
