local base16 = require("base16")
local theme = {  }

theme.colors = {
    bg = "#101415",
    fg = "#C5C8C9",
    red = "#f65b5b",
    green = "#8dc776",
    yellow = "#e7ac7e",
    blue = "#84a0c6",
    magenta = "#bb8fe5",
    cyan = "#89b8c2",

    -- Alternative colors
    bgAlt = "#101415",
    bgAlt2 = "#131718",
    fgAlt = "#c4c4c4",
    fgAlt2 = "#b7b8b8",

    -- Base16
    base00 = "#101415",
    base01 = "#26292a",
    base02 = "#3e4141",
    base03 = "#6e7071",
    base04 = "#6e7071",
    base05 = "#9fa0a0",
    base06 = "#b7b8b8",
    base07 = "#C5C8C9"
}

local function strip_hash(hex)
    return hex:gsub("#", "")
end

local c = theme.colors
local b00 = strip_hash(c.base00)
local b01 = strip_hash(c.base01)
local b02 = strip_hash(c.base02)
local b03 = strip_hash(c.base03)
local b04 = strip_hash(c.base04)
local b05 = strip_hash(c.base05)
local b06 = strip_hash(c.base06)
local b07 = strip_hash(c.base07)
local b08 = strip_hash(c.red)
local b09 = strip_hash(c.yellow)
local b0B = strip_hash(c.green)
local b0C = strip_hash(c.blue)
local b0D = strip_hash(c.magenta)
local b0E = strip_hash(c.cyan)

-- Set neovim theme.
base16.themes["neodots"] = {
    base00 = b00; base01 = b01; base02 = b02; base03 = b03;
    base04 = b04; base05 = b05; base06 = b06; base07 = b07;
    base08 = b08; base09 = b09; base0A = "e79c61"; base0B = b0B;
    base0C = b0C; base0D = b0D; base0E = b0E; base0F = "d65d0e";
}

base16(base16.themes["neodots"], true)
return theme
