-- jj exits insert mode

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit Insert Mode" })

vim.keymap.set("i", "<C-v>", "<C-r>+", { desc = "Paste From + Register" })

vim.keymap.set("n", "<S-j>", "j", { noremap = true, silent = true })
vim.keymap.set("n", "<S-k>", "k", { noremap = true, silent = true })
vim.keymap.set("n", "<S-h>", "h", { noremap = true, silent = true })
vim.keymap.set("n", "<S-l>", "l", { noremap = true, silent = true })

vim.keymap.set({ "n", "v" }, "<S-Down>", "<Down>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<S-Up>", "<Up>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<S-Left>", "<Left>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<S-Right>", "<Right>", { noremap = true, silent = true })



-- set transparency based on OS
vim.g.transparency = (vim.fn.has('win32') == 0 and true or false)
-- vim.keymap.del('n', '<C-w>')
-- quick window move, splits

vim.keymap.set({ "n" }, "<Tab>", "<C-w><C-w>", { noremap = true, desc = "[W]indow Move" })

vim.keymap.set({ "n" }, "<A-v>", "<C-w>v", { noremap = true, desc = "Window [V]ertical Split" })

vim.keymap.set({ "n" }, "<A-s>", "<C-w>s", { noremap = true, desc = "[W]indow Horizontal [S]plit" })

vim.keymap.set({ "n" }, "<A-c>", "<C-w>q", { noremap = true, desc = "[C]lose Window" })

vim.keymap.set({ "n" }, "<A-H>", "<C-w>H", { noremap = true, desc = "Move [W]indow Left" })

vim.keymap.set({ "n" }, "<A-L>", "<C-w>L", { noremap = true, desc = "Move [W]indow Right" })

vim.keymap.set({ "n" }, "<A-J>", "<C-w>J", { noremap = true, desc = "Move [W]indow Down" })

vim.keymap.set({ "n" }, "<A-K>", "<C-w>K", { noremap = true, desc = "Move [W]indow Up" })

vim.keymap.set({ "n" }, "<A-Left>", "<C-w>h", { noremap = true, desc = "Window Travel Left" })

vim.keymap.set({ "n" }, "<A-h>", "<C-w>h", { noremap = true, desc = "Window Travel Left" })

vim.keymap.set({ "n" }, "<A-Right>", "<C-w>l", { noremap = true, desc = "Window Travel Right" })

vim.keymap.set({ "n" }, "<A-l>", "<C-w>l", { noremap = true, desc = "Window Travel Right" })

vim.keymap.set({ "n" }, "<A-Down>", "<C-w>j", { noremap = true, desc = "Window Travel Down" })

vim.keymap.set({ "n" }, "<A-j>", "<C-w>j", { noremap = true, desc = "Window Travel Down" })

vim.keymap.set({ "n" }, "<A-Up>", "<C-w>k", { noremap = true, desc = "Window Travel Up" })

vim.keymap.set({ "n" }, "<A-k>", "<C-w>k", { noremap = true, desc = "Window Travel Up" })

vim.keymap.set({ "n" }, "<A-=>", "<C-w>=", { noremap = true, desc = "[W]indow Equalization ([=])" })

vim.keymap.set({ "n" }, "<A-.>", "<C-w>>", { noremap = true, desc = "Increase Width" })

vim.keymap.set({ "n" }, "<A-,>", "<C-w><", { noremap = true, desc = "Decrease Width" })

vim.keymap.set({ "n" }, "<A-u>", "<C-w>+", { noremap = true, desc = "Increase Height" })

vim.keymap.set({ "n" }, "<A-d>", "<C-w>-", { noremap = true, desc = "Decrease Height" })

-- quick saves

vim.keymap.set('n', '<A-W>', '<cmd>wa<cr>', { desc = "[S]ave [F]iles ([A]ll)", silent = false, nowait = true })

vim.keymap.set('n', '<A-w>', '<cmd>w<cr>', { desc = "[S]ave [F]ile", silent = false, nowait = true })

-- quick save/quits

vim.keymap.set('n', '<A-Q>', '<cmd>wqa<cr>',
    { desc = "[S]ave All and [F][F]", silent = false, nowait = true })

vim.keymap.set('n', '<A-q>', '<cmd>wq<cr>', { desc = "[S]ave [F]ile and [Q]uit", silent = false, nowait = true })


-- quick quits

vim.keymap.set('n', '<A-z>z', '<cmd>q!<cr>',
    { desc = "Quit Buffer Without Saving", silent = false, nowait = true })

vim.keymap.set('n', '<A-z>Z', '<cmd>qa!<cr>',
    { desc = "Quit All Buffers Without Saving", silent = false, nowait = true })

-- local window_traversal_mode = false
-- function toggle_window_traversal_mode()
--     if not window_traversal_mode then
--         vim.api.nvim_set_keymap('n', 'h', '<C-w>h', { noremap = true, silent = true })
--         vim.api.nvim_set_keymap('n', 'j', '<C-w>j', { noremap = true, silent = true })
--         vim.api.nvim_set_keymap('n', 'k', '<C-w>k', { noremap = true, silent = true })
--         vim.api.nvim_set_keymap('n', 'l', '<C-w>l', { noremap = true, silent = true })
--     else
--         vim.api.nvim_del_keymap('n', 'h')
--         vim.api.nvim_del_keymap('n', 'j')
--         vim.api.nvim_del_keymap('n', 'k')
--         vim.api.nvim_del_keymap('n', 'l')
--         -- vim.api.nvim_set_keymap('n', 'h', 'h', { noremap = false, silent = true })
--         -- vim.api.nvim_set_keymap('n', 'j', 'j', { noremap = false, silent = true })
--         -- vim.api.nvim_set_keymap('n', 'k', 'k', { noremap = false, silent = true })
--         -- vim.api.nvim_set_keymap('n', 'l', 'l', { noremap = false, silent = true })
--     end
--     window_movement_mode = not window_movement_mode
-- end
--
-- vim.api.nvim_set_keymap('n', '<leader>wb', ':lua toggle_window_traversal_mode()<CR>', { noremap = true, silent = true })

-- <leader>v performs v% (will select from bracket to bracket)

vim.keymap.set({ "n" }, "<leader>vv", "v%", { nowait = true })



-- Goto next diagnostic of any severity

vim.keymap.set("n", "]d", function()
    vim.diagnostic.goto_next({})

    vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Goto previous diagnostic of any severity

vim.keymap.set("n", "[d", function()
    vim.diagnostic.goto_prev({})

    vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Goto next error diagnostic

vim.keymap.set("n", "]e", function()
    vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })

    vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Goto previous error diagnostic

vim.keymap.set("n", "[e", function()
    vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })

    vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Goto next warning diagnostic

vim.keymap.set("n", "]w", function()
    vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN })

    vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Goto previous warning diagnostic

vim.keymap.set("n", "[w", function()
    vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN })

    vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Open the diagnostic under the cursor in a float window

vim.keymap.set("n", "<leader>d", function()
    vim.diagnostic.open_float({

        border = "rounded",

    })
end)



-- better terminal exit key

vim.keymap.set('t', '<C-\\>', "<C-\\><C-n>", { silent = true })



-- Place all dignostics into a qflist

--vim.keymap.set("n", "<leader>ld", vim.diagnostic.setqflist, { desc = "Quickfix [L]ist [D]iagnostics" })

-- Navigate to next qflist item

vim.keymap.set("n", "<leader>cn", ":cnext<cr>zz")

-- Navigate to previos qflist item

vim.keymap.set("n", "<leader>cp", ":cprevious<cr>zz")

-- Open the qflist

vim.keymap.set("n", "<leader>co", ":copen<cr>zz")

-- Close the qflist

vim.keymap.set("n", "<leader>cc", ":cclose<cr>zz")



-- unmap spacebar

vim.keymap.set('n', '<space>', '<nop>')






-- VIM HARD MODE, dont allow arrow keys

--vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')

--vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')

--vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')

--vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')



vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)





vim.keymap.set("v", "<", "<gv")

vim.keymap.set("v", ">", ">gv")





-- better paste

vim.keymap.set("v", "<leader>p", "pgvy=']")

vim.keymap.set({ "n", "v" }, "p", "p=']")





-- Center buffer while navigating

-- vim.keymap.set({ "n", "v" }, "<C-u>", "<C-u>zz")

-- vim.keymap.set({ "n", "v" }, "<C-d>", "<C-d>zz")

vim.keymap.set("n", "{", "{zz")

vim.keymap.set("n", "}", "}zz")

vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("n", "n", "nzz")

vim.keymap.set("n", "G", "Gzz")

vim.keymap.set("n", "gg", "ggzz")

vim.keymap.set("n", "<C-i>", "<C-i>zz")

vim.keymap.set("n", "<C-o>", "<C-o>zz")

vim.keymap.set("n", "%", "%zz")

vim.keymap.set("n", "*", "*zz")

vim.keymap.set("n", "#", "#zz")



-- y in visual mode doesn't reset position

vim.keymap.set("v", "y", "ygv<ESC>")



-- in insert mode use CTRL-, and CTRL-. to skip forward or backwards

vim.keymap.set("i", "<A-i>", "<ESC>I")

vim.keymap.set("i", "<A-a>", "<ESC>A")





vim.opt.iskeyword:append({ '_' })







-- SETTINGS

-- Copy/Paste from outside of NVIM

vim.o.clipboard = vim.o.clipboard .. 'unnamedplus'



-- Allow mouse mode

vim.opt.mouse = 'a'



-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term

vim.opt.ignorecase = true

vim.opt.smartcase = true

vim.opt.incsearch = true

vim.opt.hlsearch = true

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')





vim.opt.splitbelow = true

vim.opt.splitright = true



vim.opt.updatetime = 50



vim.opt.tabstop = 4

vim.opt.softtabstop = 4

vim.opt.expandtab = true



vim.opt.smartindent = true

vim.opt.shiftwidth = 4



vim.opt.breakindent = true

vim.opt.scrolloff = 8



vim.opt.completeopt = { "menuone", "noselect" }



vim.opt.wrap = false



vim.opt.backspace = "indent,eol,start"

vim.opt.swapfile = false

vim.opt.backup = false

vim.opt.undofile = true

vim.opt.cursorline = true



vim.opt.completeopt = { "menuone", "noselect", "noinsert" }

vim.opt.shortmess = vim.opt.shortmess + { c = true }

vim.api.nvim_set_option("updatetime", 300)







-- vim.opt.autochdir = true



-- UI



-- Status Column defining absolute and relative line numbers with spacing after

vim.o.signcolumn = "yes"

vim.o.number = true

vim.o.relativenumber = true

vim.o.statuscolumn = "%s %l %r  "



-- Dont show mode text where the command text normally goes (--INSERT--)

vim.opt.showmode = false







-- Highlight when yanking (copying) text

--  Try it with `yap` in normal mode

--  See `:help vim.highlight.on_yank()`

vim.api.nvim_create_autocmd('TextYankPost', {

    desc = 'Highlight when yanking (copying) text',

    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),

    callback = function()
        vim.highlight.on_yank()
    end,

})



-- Cursor

vim.opt.guicursor =
"n-c:block,i-ci-ve:ver25,v:blinkwait700-blinkoff400-blinkon250" -- change at a later date for cursor styles



-- Enables 24-bit RGB color

vim.opt.termguicolors = true



vim.opt.isfname:append("@-@")

vim.api.nvim_create_autocmd('BufEnter', {

    callback = function()
        vim.api.nvim_set_hl(0, 'LineNr', { fg = '#D3C6AA' })

        vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#7FBBB3' })
    end

})



-- ETC



-- vim.g.terminal_emulator='C:/Users/VAE9WP/AppData/Local/Programs/Git/bin/bash.exe'

-- vim.g.terminal_emulator='C:/Users/VAE9WP/AppData/Local/Programs/Git/bin/bash.exe'

-- vim.o.shell = 'C:/Users/VAE9WP/AppData/Local/Programs/Git/bin/sh.exe'


local is_windows = vim.fn.has('win32')
if is_windows == 1 then
    vim.g.terminal_emulator = 'C:/Users/VAE9WP/AppData/Local/Programs/Git/bin/sh.exe'
    vim.o.shell = 'C:/Users/VAE9WP/AppData/Local/Programs/Git/bin/sh.exe'
    vim.o.shellcmdflag = '-c'
else
    vim.o.shell = 'zsh'
    vim.o.shellcmdflag = '-c'
end


-- vim.o.shell = 'C:/Users/VAE9WP/AppData/Local/Programs/Git/bin/sh.exe'

-- vim.o.shellcmdflag = '-c'

-- vim.g.completeslash="slash"

-- vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {

--   group = vim.api.nvim_create_augroup('autoshellslash', { clear = true }),

--   callback = function()

--     vim.api.nvim_command('set shellslash')

--   end,

-- })



-- keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })

-- keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })

-- keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })

vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "lose current split" })



vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })

vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })

vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })

vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "go to previous tab" })

vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })



-- delete single character without copying into register

vim.keymap.set("n", "x", '"_x')

--vim.keymap.set("n", "<leader>hh", "<cmd>cd %:h<CR>", { desc = "Set neovim home dir to here" })



-- increment/decrement numbers

vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })

vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })





vim.cmd([[

  augroup terraform_fileset

    autocmd!

    autocmd BufRead,BufNewFile *.tf set filetype=terraform

  augroup END

]])
