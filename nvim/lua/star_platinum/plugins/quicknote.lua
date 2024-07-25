return {
    "RutaTang/quicknote.nvim",
    config = function()
        -- you must call setup to let quicknote.nvim works correctly
        require("quicknote").setup({
            mode = "resident"
        })
    end,
    dependencies = { "nvim-lua/plenary.nvim" }
}
