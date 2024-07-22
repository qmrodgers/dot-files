vim.keymap.set(

    { "n", "o", "x" },

    "<leader>vw",

    "w",

    { desc = "Original Vim [w]ord Motion", noremap = true, desc = "remapped-w" }

)

vim.keymap.set(

    { "n", "o", "x" },

    "w",

    "<cmd>lua require('spider').motion('w')<CR>",

    { desc = "Spider-w" }

)

vim.keymap.set(

    { "n", "o", "x" },

    "<leader>ve",

    "e",

    { noremap = true, desc = "remapped-e" }

)

vim.keymap.set(

    { "n", "o", "x" },

    "e",

    "<cmd>lua require('spider').motion('e')<CR>",

    { desc = "Spider-e" }

)

vim.keymap.set(

    { "n", "o", "x" },

    "<leader>vb",

    "b",

    { noremap = true, desc = "remapped-b" }

)

vim.keymap.set(

    { "n", "o", "x" },

    "b",

    "<cmd>lua require('spider').motion('b')<CR>",

    { desc = "Spider-b" }

)
