
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	{ "EdenEast/nightfox.nvim" },
	{ "folke/tokyonight.nvim" },
	{ "folke/zen-mode.nvim" },
	{ "folke/twilight.nvim" },
	{ "luckasRanarison/tailwind-tools.nvim" },
	{ "navarasu/onedark.nvim" },
        { "neovim/nvim-lspconfig" },
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-telescope/telescope.nvim" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "tpope/vim-rails" },
})


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

require("tokyonight").setup({ style = "night" })
require('tokyonight').load()


-- General
vim.g.is_posix      = true  -- Assume POSIX shell in vim.
vim.opt.mouse       = "a"   -- Enable mouse support in all modes.
vim.opt.swapfile    = false -- No swap files.
vim.opt.writebackup = false -- Don't write backup files.

vim.opt.syntax      = "on"
vim.opt.tabstop     = 2    -- Two spaces for tab.
vim.opt.softtabstop = 2    -- Two spaces for soft tabs.
vim.opt.expandtab   = true -- Spaces for tab.
vim.opt.shiftwidth  = 2    -- Two space indenting.

-- Display extra whitespace.
vim.opt.list        = true
vim.opt.listchars   = "tab:»·,trail:·"

-- Enable spell check and set text width for Markdown files.
vim.api.nvim_create_autocmd(
  { "BufRead", "BufNewFile" },
  {
    pattern  = { "*md", "*.markdown" },
    callback = function()
      vim.opt_local.spell     = true
      vim.opt_local.textwidth = 80
    end
  }
)

-- Enable spell check and set text width for commit messages.
vim.api.nvim_create_autocmd(
  { "FileType" },
  {
    pattern  = { "gitcommit" },
    callback = function()
      vim.opt_local.spell     = true
      vim.opt_local.textwidth = 80
    end
  }
)

vim.opt.showmode    = false -- Disable mode in status line.
vim.opt.number      = true  -- Show line numbers.
vim.opt.numberwidth = 5     -- Width of gutter for line numbers.
vim.opt.scrolloff   = 10    -- Vertical line buffer when scrolling.
vim.g.mapleader     = ","
vim.keymap.set("v", "<Leader>c", "\"+y") -- Copy selection to the clipboard.
vim.keymap.set("v", "D", "y'>p") -- Duplicate a selection.
vim.keymap.set("n", "<Leader>h", ":nohl<CR>") -- Hide search highlighting.

-- Quickly escape to move up and down.
vim.keymap.set("i", "jj", "<ESC>j")
vim.keymap.set("i", "kk", "<ESC>k")

-- Shortcuts for Rails commands.
vim.keymap.set("n", "<Leader>bo", ":ExecuteCommandInPane bundle\\ outdated 0 0 2<CR>")
vim.keymap.set("n", "<Leader>r", ":ExecuteCommandInPane rubocop 0 0 2<CR>")
vim.keymap.set("n", "<Leader>rc", ":ExecuteCommandInPane bundle\\ exec\\ rake\\ check 0 0 2<CR>")
vim.keymap.set("n", "<Leader>yo", ":ExecuteCommandInPane yarn\\ outdated 1 0 2<CR>")

-- Tab shortcuts.
vim.keymap.set("n", "<Leader>w", ":quit<CR>")
vim.keymap.set("n", "<Leader>[", ":tabprevious<CR>")
vim.keymap.set("n", "<Leader>]", ":tabnext<CR>")
vim.keymap.set("n", "<Leader>1", ":tabn 1<CR>")
vim.keymap.set("n", "<Leader>2", ":tabn 2<CR>")
vim.keymap.set("n", "<Leader>3", ":tabn 3<CR>")
vim.keymap.set("n", "<Leader>4", ":tabn 4<CR>")
vim.keymap.set("n", "<Leader>5", ":tabn 5<CR>")
vim.keymap.set("n", "<Leader>6", ":tabn 6<CR>")
vim.keymap.set("n", "<Leader>7", ":tabn 7<CR>")
vim.keymap.set("n", "<Leader>8", ":tabn 8<CR>")
vim.keymap.set("n", "<Leader>9", ":tabn 9<CR>")
vim.keymap.set("n", "<Leader>0", ":tablast<CR>")

-- Shortcuts for CMD+S forwarding support.
vim.keymap.set("n", "<C-S>", ":update<CR>")
vim.keymap.set("v", "<C-S>", "<C-C>:update<CR>")
vim.keymap.set("i", "<C-S>", "<C-O>:update<CR>")

-- Opens an edit command with the path of the currently edited file filled in.
vim.keymap.set("n", "<Leader>e", ":e +9 <C-R>=escape(expand(\"%:p:h\") . \"/\", \" \") <CR>")

-- Opens a tab edit command with the path of the currently edited file filled in.
vim.keymap.set("n", "<Leader>te", ":tabe +9 <C-R>=escape(expand(\"%:p:h\") . \"/\", \" \") <CR>")


-- Case only matters with mixed case expressions.
vim.opt.ignorecase    = true
vim.opt.smartcase     = true

-- Hide uncommon directories and files.
vim.g.netrw_list_hide = table.concat({
  "^\\.bundle\\/",
  "^\\.dockerignore",
  "^\\.eslintignore$",
  "^\\.eslintrc$",
  "^\\.jekyll-assets-cache\\/",
  "^\\.jekyll-cache\\/",
  "^\\.git\\/",
  "^\\.gitattributes",
  "^\\.gitignore$",
  "^\\.lighthouseci",
  "^\\.netlify",
  "^\\.pryrc$",
  "^\\.rspec$",
  "^\\.ruby-lsp\\/$",
  "^\\.yarn",
  "^\\.yarnrc",
  "^\\.\\/$",
  "^_site\\/$",
  "^coverage\\/$",
  "^Gemfile.lock",
  "^node_modules\\/$",
  "^tags$",
  "^tmp\\/$",
  "^yarn.lock"
}, ",")
