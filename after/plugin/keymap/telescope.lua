local nnoremap = require("pratik.keymap").nnoremap

-- more inspo: https://github.com/ThePrimeagen/.dotfiles/blob/master/nvim/.config/nvim/after/plugin/keymap/telescope.lua
--
nnoremap("<Leader>p", ":Telescope")
nnoremap("<Leader>pf", function()
    require('telescope.builtin').find_files()
end)

