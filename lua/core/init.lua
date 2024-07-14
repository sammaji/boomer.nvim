-- Default options:
require('kanagawa').setup({
    transparent = true,
    
    -- "wave" | "dragon" | "lotus"
    background = {               
        dark = "dragon",
        light = "lotus"
    },
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")