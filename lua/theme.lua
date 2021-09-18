local base16 = require("base16")
local theme = {  }

theme.colors = {
    bg = "#1d2021",
    fg = "#fbf1c7",
    red = "#ea6962",
    green = "#a9b665",
    yellow = "#ffc745",
    blue = "#7daea3",
    magenta = "#93869b",
    cyan = "#89b482",

    -- Alternative colors
    bgAlt = "#282828",
    bgAlt2 = "#32302f",
    fgAlt = "#ebdbb2",
    fgAlt2 = "#bdae93",

    -- Base16
    base00 = "#1d2021",
    base01 = "#3c3836",
    base02 = "#504945",
    base03 = "#665c54",
    base04 = "#bdae93",
    base05 = "#d5c4a1",
    base06 = "#ebdbb2",
    base07 = "#fbf1c7"
}

function stripHash(hex)
    return hex:gsub("#", "")
end

local c = theme.colors
local b00 = stripHash(c.base00)
local b01 = stripHash(c.base01)
local b02 = stripHash(c.base02)
local b03 = stripHash(c.base03)
local b04 = stripHash(c.base04)
local b05 = stripHash(c.base05)
local b06 = stripHash(c.base06)
local b07 = stripHash(c.base07)

-- Set neovim theme.
base16.themes["neodots"] = {
    base00 = b00; base01 = b01; base02 = b02; base03 = b03;
    base04 = b04; base05 = b05; base06 = b06; base07 = b07;
    base08 = "ea6962"; base09 = "e0b34c"; base0A = "d48049"; base0B = "a9b665";
    base0C = "7daea3"; base0D = "d3869b"; base0E = "89b482"; base0F = "d65d0e";
}

base16(base16.themes["neodots"], true)
return theme
