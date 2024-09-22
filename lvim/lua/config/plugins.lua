lvim.plugins = {
--   {
--     "ggandor/leap.nvim",
--     name = "leap",
--     config = function()
--       require("leap").add_default_mappings()
--     end,
--   },
--   {
--     "nacro90/numb.nvim",
--     event = "BufRead",
--     config = function()
--       require("numb").setup {
--         show_numbers = true, -- Enable 'number' for the window while peeking
--         show_cursorline = true, -- Enable 'cursorline' for the window while peeking
--       }
--     end,
--   },
--   {
--     "kevinhwang91/nvim-bqf",
--     event = { "BufRead", "BufNew" },
--     config = function()
--       require("bqf").setup({
--         auto_enable = true,
--         preview = {
--           win_height = 12,
--           win_vheight = 12,
--           delay_syntax = 80,
--           border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
--         },
--         func_map = {
--           vsplit = "",
--           ptogglemode = "z,",
--           stoggleup = "",
--         },
--         filter = {
--           fzf = {
--             action_for = { ["ctrl-s"] = "split" },
--             extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
--           },
--         },
--       })
--     end,
--   },
--   {
--     "mrjones2014/nvim-ts-rainbow",
--   },
   {
     "folke/tokyonight.nvim",
     lazy = false,
     priority = 1000,
     opts = {},
   },
--   {
--     "nvim-telescope/telescope-fzy-native.nvim",
--     build = "make",
--     event = "BufRead",
--   },
--   {
--     "Pocco81/auto-save.nvim",
--     config = function()
--       require("auto-save").setup()
--     end,
--   },
-- 
--   {
--     "metakirby5/codi.vim",
--     cmd = "Codi",
--   },
 
   {
     "ethanholz/nvim-lastplace",
     event = "BufRead",
     config = function()
       require("nvim-lastplace").setup({
         lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
         lastplace_ignore_filetype = {
           "gitcommit", "gitrebase", "svn", "hgcommit",
         },
         lastplace_open_folds = true,
       })
     end,
   },
 
--   {
--     "itchyny/vim-cursorword",
--     event = {"BufEnter", "BufNewFile"},
--     config = function()
--       vim.api.nvim_command("augroup user_plugin_cursorword")
--       vim.api.nvim_command("autocmd!")
--       vim.api.nvim_command("autocmd FileType NvimTree,lspsagafinder,dashboard,vista let b:cursorword = 0")
--       vim.api.nvim_command("autocmd WinEnter * if &diff || &pvw | let b:cursorword = 0 | endif")
--       vim.api.nvim_command("autocmd InsertEnter * let b:cursorword = 0")
--       vim.api.nvim_command("autocmd InsertLeave * let b:cursorword = 1")
--       vim.api.nvim_command("augroup END")
--     end
--   },
--   { "tpope/vim-repeat" },
   {
     "williamboman/mason.nvim",
     "williamboman/mason-lspconfig.nvim",
     "neovim/nvim-lspconfig",
 },
   { "tpope/vim-rails" },
   { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
   { "rafamadriz/friendly-snippets" }
 }
