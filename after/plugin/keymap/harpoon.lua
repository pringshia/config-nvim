local nnoremap = require("pratik.keymap").nnoremap

nnoremap("<leader>a", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, silent)

nnoremap("<leader>j", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<leader>k", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<leader>l", function() require("harpoon.ui").nav_file(3) end, silent)
