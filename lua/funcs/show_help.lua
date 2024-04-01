function show_nvim_help()
    local content = {
        'My Neovim configure help:',
        '',
        'File Explorer:',
        'leader+t to open File Explorer',
        '`g?` to show NvimTree mappings in File Explorer',
        '',
        'Telescope:',
        'leader+ff to find files',
        'leader+fb to open file browser',
        'leader+fg to search strings',
        'leader+bf to open buffers',
        'leader+hf to open help tags',
        'leader+of to show old files',
        'leader+cs to switch colorscheme',
        'leader+rr to open registers',
        '',
        'Joshuto:',
        'leader+jo to open joshuto',
        '',
        'SymbolsOutline:',
        'leader+s to show symbols',
        '',
        'Console:',
        'leader+cf to open a floating console',
        'leader+cb to open a console below main window',
    }

    local buf = vim.api.nvim_create_buf(false, true)

    vim.api.nvim_buf_set_lines(buf, 0, -1, false, content)

    local win_opts = {
        relative = 'editor',
        anchor = 'NE', -- (main window)northeast
        width = 60,
        height = #content,
        row = 0,
        col = 0,
        style = 'minimal',
        border = 'rounded',
        -- cursorline = true
    }

    vim.api.nvim_open_win(buf, true, win_opts)

    vim.api.nvim_buf_set_keymap(buf, 'n', 'q', '<cmd>bd!<CR>', { noremap = true, silent = true})

end
