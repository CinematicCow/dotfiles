return {
    'williamboman/mason.nvim',
    config = function()
        require('mason').setup({
            tools = {
                install_tool = {
                    ["npm"] = {
                        "bun",
                        "install",
                    },
                },
            },
        })
    end
}
