return {
    colorscheme = "gruvbox-material",
    plugins = {
        {
            "catppuccin/nvim",
            as = "catppuccin",
            config = function()
                require("catppuccin").setup {}
            end,
        },
        {
            "AstroNvim/astrocommunity",
            { import = "astrocommunity.motion.harpoon" }
        },
        {
            "sainnhe/gruvbox-material",
            as = "gruvbox-material",
        }, {
        "nvim-neo-tree/neo-tree.nvim",
        lazy = false,
        opts = function(_, opts)
            return require("astronvim.utils").extend_tbl(opts, {
                sources = {
                    "filesystem",
                },
                add_blank_line_top = false,
                hide_root_node = true,
                retain_hidden_root_indent = true,
                enable_git_status = false,
                source_selector = {
                    winbar = false,
                },
                git_status_async = false,
                window = {
                    position = "right",
                },
                -- log_level = "trace",
                -- log_to_file = true,
            })
        end,
    },
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
                            accept = "<M-l>",
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
