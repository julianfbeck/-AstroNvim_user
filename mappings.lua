local utils = require("astronvim.utils")

return {
  n = {
    ["<leader>tk"] = { function() utils.toggle_term_cmd "k9s" end, desc = "ToggleTerm k9s" },
    ["<leader>ts"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle t" },
    ["<leader>fd"] = {
      function()
        require("telescope.builtin").find_files { hidden = false, no_ignore = false, search_dirs = {
          "~/Downloads/", prompt_title = "Find Files in Downloads" }, }
      end,
      desc = "Find Files in Downloads",
    },
    ["<leader>fp"] = {

      function()
        require("telescope.builtin").find_files { hidden = false, no_ignore = false, search_dirs = {
          "~/Development/", prompt_title = "Find Files in Programm" }, }
      end,
      desc = "Find Files in Downloads",
    },
    ["<leader>fm"] = {

      function()
        require("telescope.builtin").find_files { hidden = false, no_ignore = false, search_dirs = {
          "~/Development/markant", prompt_title = "Find Files in Markant Folder" }, }
      end,
      desc = "Find Files in Downloads",
    },
    ["<leader><space>y"] = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Harpoon File 1" },
    ["<leader><space>x"] = { "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Harpoon File 2" },
    ["<leader><space>c"] = { "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Harpoon File 3" },
    ["<leader><space>v"] = { "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Harpoon File 4" },
    ["<leader><space>b"] = { "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", desc = "Harpoon File 5" },
  }
}
