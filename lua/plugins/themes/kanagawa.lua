local settings = require("config.settings")
local transparency = settings.theme.transparency
local dimInactive = settings.theme.dimInactive

return {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    opts = {
        compile = false,  -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = transparency, -- do not set background color
        dimInactive = dimInactive,  -- dim inactive window `:h hl-NormalNC`
        terminalColors = true,      -- define vim.g.terminal_color_{0,17}
        background = {              -- map the value of 'background' option to a theme
            dark = "wave",          -- try "dragon" !
            light = "lotus"
        },
    }
}
