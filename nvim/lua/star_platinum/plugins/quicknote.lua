return {
    "RutaTang/quicknote.nvim",
    config = function()
        -- you must call setup to let quicknote.nvim works correctly
        require("quicknote").setup({})
    end,
    dependencies = { "nvim-lua/plenary.nvim" }
}
