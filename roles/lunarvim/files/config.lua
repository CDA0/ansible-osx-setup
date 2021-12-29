--- Managed by ansible

--- general
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.format_on_save = true
lvim.colorscheme = 'nord'

--- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = 'space'
lvim.keys.normal_mode['<C-s>'] = ':w<cr>'
lvim.keys.normal_mode['<Up>'] = ''

lvim.builtin.which_key.mappings['u'] = { ':UndotreeToggle<CR>', 'UndotreeToggle' }

--- builtins [after chaning config run :PackerInstall :PackerCompile]
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = 'left'
lvim.builtin.nvimtree.show_icons.git = 1

--- treesitter
lvim.builtin.treesitter.ensure_installed = 'maintained'
lvim.builtin.treesitter.ignore_install = { 'haskell' }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.rainbow.enable = true

--- formatting
lvim.lang.javascript.formatters = { { exe = 'prettier' } }
lvim.lang.javascriptreact.formatters = lvim.lang.javascript.formatters
lvim.lang.typescript.formatters = lvim.lang.javascript.formatters
lvim.lang.typescriptreact.formatters = lvim.lang.javascript.formatters

lvim.lang.javascript.linters = { { exe = 'eslint_d' } }
lvim.lang.javascriptreact.linters = lvim.lang.javascript.linters
lvim.lang.typescript.linters = lvim.lang.javascript.linters
lvim.lang.typescriptreact.linters = lvim.lang.javascript.linters

lvim.lang.lua.formatters = { { exe = 'stylua' } }

lvim.lang.sh.formatters = { { exe = 'shfmt' } }
lvim.lang.sh.linters = { { exe = 'shellcheck' } }

--- Additional Plugins
lvim.plugins = {
    {
        'karb94/neoscroll.nvim',
        config = function()
            require('neoscroll').setup({})
        end,
    },
    { 'f-person/git-blame.nvim' },
    { 'lukas-reineke/indent-blankline.nvim' },
    { 'ggandor/lightspeed.nvim' },
    { 'p00f/nvim-ts-rainbow' },
    {
        'shaunsingh/nord.nvim',
        config = function()
            vim.g.nord_contrast = true
            vim.g.nord_borders = true
            vim.g.nord_disable_background = true
            vim.g.nord_italic = true
        end,
    },
    {
        'blackCauldron7/surround.nvim',
        config = function()
            vim.g.surround_mappings_style = 'surround'
            require('surround').setup({})
        end,
    },
    {
        'alexghergh/nvim-tmux-navigation',
        config = function()
            require('nvim-tmux-navigation').setup({
                disable_when_zoomed = true, -- defaults to false
                keybindings = {
                    left = '<c-h>',
                    down = '<C-j>',
                    up = '<C-k>',
                    right = '<C-l>',
                    previous = '<C-\\>',
                },
            })
        end,
    },
    { 'romainl/vim-cool' },
    { 'mbbill/undotree' },
    { 'khaveesh/vim-fish-syntax' },
    { 'rrethy/vim-illuminate' },
}
