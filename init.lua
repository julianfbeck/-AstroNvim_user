return {
    colorscheme = "catppuccin",
    plugins = {
        {
            "catppuccin/nvim",
            as = "catppuccin",
            config = function()
                require("catppuccin").setup {}
            end,
        },
        -- {
        --     "github/copilot.vim",
        --     lazy = false,
        -- },
        --


        {
            "zbirenbaum/copilot.lua",
            lazy = false,
            as = "copilot",
            config = function()
                require("copilot").setup({
                    suggestion = {
                        enabled = true,
                        auto_trigger = true,
                        debounce = 75,
                        keymap = {
                            accept = "<tab>",
                            accept_word = false,
                            accept_line = false,
                            next = "<M-]>",
                            prev = "<M-[>",
                            dismiss = "<C-]>",
                        },
                    },
                    filetypes = {
                        yaml = true,
                        markdown = true,
                        help = false,
                        gitcommit = false,
                        gitrebase = false,
                        hgcommit = false,
                        svn = false,
                        cvs = false,
                        ["."] = false,
                    },
                    copilot_node_command = 'node', -- Node.js version must be > 16.x
                    server_opts_overrides = {},
                })
            end,
        }
    },
}
