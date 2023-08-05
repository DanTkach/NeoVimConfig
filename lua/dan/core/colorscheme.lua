local status, _ = pcall(vim.cmd, "colorscheme catppuccin-mocha")
local catppuccin = require("catppuccin")

catppuccin.setup({
    term_colors = false,
    integrations = {
        nvimtree = {
            enabled = true,
            show_root = true,
            transparent_panel = false
        },
    }
})


vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalSB", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
if not status then 
    print("Colorscheme not found")
    return
end

