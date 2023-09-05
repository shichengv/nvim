if vim.g.neovide then

    vim.o.guifont = "Cascadia Code:h14"
    vim.g.neovide_scale_factor = 1.0
    vim.g.neovide_padding_top = 0
    vim.g.neovide_padding_bottom = 0
    vim.g.neovide_padding_right = 0
    vim.g.neovide_padding_left = 0

    -- Helper function for transparency formatting
    local alpha = function()
      return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
    end
    -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
    -- Setting g:neovide_transparency to a value between 0.0 and 1.0 will 
    -- set the opacity of the window to that value.
    -- vim.g.neovide_transparency = 0.8
    vim.g.neovide_transparency = 0.8
    vim.g.transparency = 0.8
    vim.g.neovide_background_color = "#0f1117" .. alpha()

    -- Theme
    vim.g.neovide_theme = 'auto'
    -- Remember Previous Windows Size
    vim.g.neovide_remember_windows_size = true
    -- Animate switch to command line
    vim.g.neovide_cursor_animate_command_line = true

end
