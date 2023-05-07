local options = require("core.options")
local M = {
    requires = {
        "gruvbox",
    },
}

function M.before() end

function M.load()
    M.gruvbox.setup({
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
            strings = true,
            comments = true,
            operators = false,
            folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = options.transparent,
        mode = "dark",
        preset = true,
        transparent = options.transparent,
        expands = {
            hop = true,
            lazy = true,
            aerial = true,
            fidget = true,
            null_ls = true,
            nvim_cmp = true,
            gitsigns = true,
            which_key = true,
            nvim_tree = true,
            lspconfig = true,
            telescope = true,
            bufferline = true,
            nvim_navic = true,
            nvim_notify = true,
            vim_illuminate = true,
            nvim_treesitter = true,
            nvim_ts_rainbow = true,
            nvim_scrollview = true,
            indent_blankline = true,
            vim_visual_multi = true,
        },
        hooks = {
            ---@diagnostic disable-next-line: unused-local
            before = function(conf, colors, utils) end,
            ---@diagnostic disable-next-line: unused-local
            after = function(conf, colors, utils) end,
        },
    })
end

function M.after() end

return M
