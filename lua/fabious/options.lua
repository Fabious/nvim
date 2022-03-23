-- :help options
vim.opt.backup = false                          -- creates a backup file
vim.opt.breakindent = true                      -- enable break indent
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
vim.opt.hlsearch = false                        -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.number = true                           -- set numbered lines
vim.opt.numberwidth = 4                         -- set number column width to 2 {default 4}
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.relativenumber = false                  -- set relative numbered lines
vim.opt.scrolloff = 8                           -- is one of my fav
vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- creates a swapfile
vim.opt.tabstop = 2                             -- insert 2 spaces for a tab
vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = false                        -- persistent undo
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.wrap = false                            -- display lines as one long line
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

vim.cmd [[colorscheme tokyonight]]
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

-- blankline plugin
vim.g.indent_blankline_char = '┊'
vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
vim.g.indent_blankline_show_trailing_blankline_indent = false

