-- Window bar
--
vim.opt.winbar = "%m %t%= %h"

-- Wide cursor
--
vim.opt.guicursor = "n-v-i-c:block-Cursor"

-- Cursor line
--
vim.opt.cursorline = true

-- Tabbing
--
-- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
vim.opt.expandtab = true
--
-- Number of spaces that a <Tab> in the file counts for.
vim.opt.tabstop = 4
--
-- Number of spaces to use for each step of (auto)indent.
-- Used for |'cindent'|, |>>|, |<<|, etc.
vim.opt.shiftwidth = 4
--
--  When on, a <Tab> in front of a line inserts blanks according to
--  'shiftwidth'.  'tabstop' or 'softtabstop' is used in other places.
--  A <BS> will delete a 'shiftwidth' worth of space at the start of the line.
vim.opt.smarttab = true

-- Indentation
--
-- Copy indent from current line when starting a new line
-- (typing <CR> in Insert mode or when using the "o" or "O" command).
vim.opt.autoindent = true
--
-- An indent is automatically inserted:
-- - After a line ending in "{".
-- - After a line starting with a keyword from 'cinwords'.
-- - Before a line starting with "}" (only with the "O" command).
vim.opt.smartindent = true

-- Line Numbering
--
-- Print the line number in front of each line.
vim.opt.number = true
--
-- Show the line number relative to the line with the cursor in front of each line.
vim.opt.relativenumber = false

-- Searching & Substitutions
--
-- When there is a previous search pattern, highlight all its matches.
vim.opt.hlsearch = false
--
-- While typing a search command, show where the pattern, as it was typed so far, matches.
vim.opt.incsearch = true
--
-- Ignore case in search patterns.
vim.opt.ignorecase = true
--
-- Override the 'ignorecase' option if the search pattern contains upper case characters.
vim.opt.smartcase = true
--
-- When nonempty, shows the effects of |:substitute|, |:smagic|, |:snomagic|
-- and user commands with the |:command-preview| flag as you type.
vim.opt.inccommand = "split"

-- Splitting
--
-- When on, splitting a window will put the new window right of the current one.
vim.opt.splitright = true
--
-- When on, splitting a window will put the new window below the current one.
vim.opt.splitbelow = true

-- Special Characters Buffer
--
-- show tabs, trailing spaces and non-breakable space characters.
vim.opt.list = true
vim.opt.listchars = {
    tab = '» ',
    trail = '',
}

-- Globals
--
-- Highlighting matching parens
vim.g.loaded_matchparen = 1
--
-- Leader key to space
vim.g.mapleader = " "

-- Scrolling Smoothly
--
--  Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 8
--
-- Draw the signcolumn.
vim.opt.signcolumn = "yes"

-- Other
--
vim.opt.wrap = false
--
-- Enables 24-bit RGB color in the |TUI|.
vim.opt.termguicolors = true
--
-- Save undo history
vim.opt.undofile = true
--
-- Netrw listing style
local netrwStyles = {
    thin = 0,
    long = 1,
    wide = 2,
    tree = 3,
}
vim.g.netrw_liststyle = netrwStyles["tree"]
vim.g.netrw_banner = 0
