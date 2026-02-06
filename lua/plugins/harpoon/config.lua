require("harpoon").setup({
    menu = {
        width = 120,
    }
})

vim.keymap.set("n", "<C-k>", function() require("harpoon.ui").toggle_quick_menu() end, { desc = "Harpoon: Open Menu" })
vim.keymap.set("n", "<C-s>", function() require("harpoon.mark").add_file() end, { desc = "Harpoon: Open Menu" })
vim.keymap.set("n", "<C-h>", function() require("harpoon.mark").clear_all() end, { desc = "Harpoon: Open Menu" })

