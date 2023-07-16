local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- LSP
    use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    -- Markdown
    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })



    -- AutoComment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    -- Clipboard
    -- use {
    --     "AckslD/nvim-neoclip.lua",
    --     config = function()
    --         require('neoclip').setup()
    --     end,
    --     requires = {
    --         {'kkharji/sqlite.lua', module = 'sqlite'},
    --     }
    --
    --
    -- }
    use "tenxsoydev/karen-yank.nvim"

    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- terminal
    use 'voldikss/vim-floaterm'

    -- Icon
    use 'kyazdani42/nvim-web-devicons'
    use 'theniceboy/joshuto.nvim'
    -- File Explorer
    use {
        'nvim-tree/nvim-tree.lua',
        config = function()
            require("nvim-tree").setup {}
        end
    }

    -- TabLine
    -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
    use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
    use 'romgrk/barbar.nvim'

    use {
        'ur4ltz/surround.nvim',
        config = function()
            require"surround".setup {mappings_style = "surround"}
        end
    }

    use 'simrat39/symbols-outline.nvim'
    -- StatusLine
    use 'windwp/windline.nvim'
    -- indent
    use "lukas-reineke/indent-blankline.nvim"
    -- git integration
    use 'lewis6991/gitsigns.nvim'
    -- which-key
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use({
        "folke/noice.nvim",
        config = function()
            require("noice").setup({
                -- add any options here
            })
        end,
        requires = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        }
    })

    -- colorscheme
    use 'folke/tokyonight.nvim'
    use 'NTBBloodbath/doom-one.nvim'
    use 'lukas-reineke/headlines.nvim'

    if packer_bootstrap then
        require('packer').sync()
    end
end)

