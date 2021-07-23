local base16 = require("base16")
--[[
local theme = base16.theme_from_array { -- Make this configurable.
    "1d2021"; "3c3836"; "504945"; "665c54";
    "bdae93"; "d5c4a1"; "ebdbb2"; "fbf1c7";
    "ea6962"; "fe8019"; "a9b665"; "ffc745";
    "7daea3"; "d3869b"; "89b482"; "d65d0e";
} ]]--

base16(base16.themes["gruvbox-dark-hard"], true)
