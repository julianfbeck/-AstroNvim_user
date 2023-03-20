local utils = require("astronvim.utils")
return {
  n = {
    ["<leader>tk"] = { function() utils.toggle_term_cmd "k9s" end, desc = "ToggleTerm k9s" },
    ["<leader>ts"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle t" }
  }
}
