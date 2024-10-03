return {
    "OXY2DEV/markview.nvim",
    ft = "markdown",
    lazy = true,
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        buf_ignore = { "nofile" },
        modes = { "n", "no" },

        options = {
            on_enable = {},
            on_disable = {},
        },

        block_quotes = {},
        checkboxes = {},
        code_blocks = {},
        headings = {},
        horizontal_rules = {},
        inline_codes = {},
        links = {},
        list_items = {},
        tables = {},
    },
}
