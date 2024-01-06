local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
    return
end

local builtin = require('telescope.builtin')

local mappings = {
    ["b"] = {
        name = "Harpoon"
    },
    ["f"] = {
        name = "find",
        f = { "<Cmd>lua require('telescope.builtin').find_files()<CR>", "Find Files" },
        p = { "<Cmd>lua require('telescope.builtin').git_files()<CR>", "Git Files" },
        s = { function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end, "Grep String" },
    },
    ["vh"] = { "<Cmd>lua require('telescope.builtin').help_tags()<CR>", "Help Tags" },
    ["u"] = { "<Cmd>UndotreeToggle<CR>", "Toggle Undo Tree" },
    ["l"] = {
        name = "lsp",
        f = { "<Cmd>lua vim.lsp.buf.format()<CR>", "Format" },
        w = { "<Cmd>lua vim.lsp.buf.workspace_symbol()<CR>", "Workspace Symbol" },
        a = { "<Cmd>lua vim.diagnostic.open_float()<CR>", "Diagnostic Float" },
        A = { "<Cmd>lua vim.diagnostic.goto_next()<CR>", "Next Diagnostic" },
        D = { "<Cmd>lua vim.diagnostic.goto_prev()<CR>", "Previous Diagnostic" },
        d = { "<Cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
        rr = { "<Cmd>lua vim.lsp.buf.references()<CR>", "References" },
        R = { "<Cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
        ["<C-h>"] = { "<Cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature Help" },
    },

}



which_key.register(mappings, { prefix = "<leader>" })
