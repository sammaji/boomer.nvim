local term = require("toggleterm")

term.setup({})

local trim_spaces = true

vim.keymap.set("n", "<leader>tv", function()
    require("toggleterm").send_lines_to_terminal("single_line", trim_spaces, { args = vim.v.count })
end)