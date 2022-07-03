--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '<ESC>', {})

-- Toggle plugins
map('n', 'n', [[:NvimTreeToggle]], {})
map('n', 'it', [[:IndentLinesToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})
map('n', 'mt', [[:MarkdownPreviewToggle]], {})
