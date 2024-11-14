return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("neo-tree").setup({
                filesystem = {
                    filtered_items = {
                        visible = false,
                        hide_dotfiles = false,
                        hide_gitignored = false,
                    },
                },

            })
            -- Change the color of the pop up title bar
            -- when creating a new file or directory
            vim.cmd([[highlight NeoTreeTitleBar guifg=#ffffff]])
        end
    }
}
