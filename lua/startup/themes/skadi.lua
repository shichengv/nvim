local user_bookmarks = vim.g.startup_bookmarks

local bookmark_texts = { "Bookmarks", "" }
local user_bookmark_mappings = {}

if not user_bookmarks then
    user_bookmarks = {}
    bookmark_texts = {}
end

for key, file in pairs(user_bookmarks) do
    bookmark_texts[#bookmark_texts + 1] = key .. " " .. file
end

for key, file in pairs(user_bookmarks) do
    user_bookmark_mappings[key] = "<cmd>e " .. file .. "<CR>"
end

local settings = {
    -- every line should be same width without escaped \
    header = {
        type = "text",
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = require("startup.headers").skadi_header,
        -- content = require("startup.headers").genshin_header,
        highlight = "Statement",
        default_color = "",
        oldfiles_amount = 0,
    },
    -- name which will be displayed and command
    footer = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 5,
        content = { "斯卡蒂！" },
        highlight = "Statement",
        default_color = "",
        oldfiles_amount = 0,
    },
    body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Basic Commands",
        margin = 5,
        content = {
            { " Find File", "Telescope find_files", "<leader>ff" },
            { " Find Word", "Telescope live_grep", "<leader>fg" },
            { " Recent Files", "Telescope oldfiles", "<leader>of" },
            { " File Browser", "Telescope file_browser", "<leader>fb" },
            { " Colorschemes", "Telescope colorscheme", "<leader>cs" },
            { " New File", "lua require'startup'.new_file()", "<leader>nf" },
        },
        highlight = "String",
        default_color = "",
        oldfiles_amount = 0,
    },

    bookmarks = {
        type = "text",
        align = "center",
        margin = 5,
        content = bookmark_texts,
        highlight = "Constant",
    },

    options = {
        after = function()
            require("startup").create_mappings(user_bookmark_mappings)
            require("startup.utils").oldfiles_mappings()
        end,
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 1, 3, 3, 0 },
    },
    mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
    },
    colors = {
        background = "#1f2227",
        folded_section = "#9900FF",
    },
    parts = { "header", "footer", "body", "bookmarks"  },
}
return settings
