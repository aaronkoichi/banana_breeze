-- ~/.config/nvim/lua/banana_breeze.lua
local colors = {
  bg = '#f5f0d8', -- Softer yellow-tinted background
  bg_lighter = '#fcf7e3', -- Lighter background for UI elements
  bg_darker = '#ebe6c0', -- Darker background for contrast
  fg = '#4a4233', -- Darker text for better contrast
  yellow = '#ffd461', -- Banana yellow (accent)
  yellow_dim = '#e6b954', -- Softer yellow
  skin = '#c39b80', -- Skin tone
  hair_light = '#f8e6c9', -- Light blonde hair
  hair_dark = '#dfc394', -- Darker blonde hair
  shadow = '#b8aec3', -- Darker shadow for better contrast
  black = '#2a2520', -- Deep brown-black

  -- Additional colors for syntax and UI elements
  green = '#688c40', -- Success/add
  green_bg = '#c0e5c0', -- Light green background
  red = '#b05050', -- Error/delete
  red_bg = '#e5c0c0', -- Light red background
  blue = '#4b7598', -- Info/changed
  blue_bg = '#cce5e5', -- Light blue background
  purple = '#8754b3', -- Special
  orange = '#c87c4b', -- Warnings
  brown = '#9e7d45', -- Secondary accent
  brown_dark = '#6a563a', -- Dark accent
}

local M = {
  -- Lualine theme configuration
  normal = {
    a = { fg = colors.black, bg = colors.yellow, gui = 'bold' },
    b = { fg = colors.black, bg = colors.hair_dark },
    c = { fg = colors.fg, bg = colors.bg_darker },
  },
  insert = {
    a = { fg = colors.bg, bg = colors.skin, gui = 'bold' },
    b = { fg = colors.black, bg = colors.hair_light },
  },
  visual = {
    a = { fg = colors.black, bg = colors.shadow, gui = 'bold' },
  },
  replace = {
    a = { fg = colors.black, bg = colors.yellow_dim, gui = 'bold' },
  },
  inactive = {
    a = { fg = colors.fg, bg = colors.bg_darker, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
  },

  -- Syntax highlighting with improved contrast
  base_syntax = {
    Comment = { fg = colors.shadow, italic = true },
    String = { fg = '#9e7d45' }, -- Darker yellow-brown for strings
    Number = { fg = '#aa6c4f' }, -- Darker red-brown for numbers
    Function = { fg = '#916916', bold = true }, -- Darker gold for functions
    Keyword = { fg = colors.black, bold = true },
    Constant = { fg = '#a26441' }, -- Darker orange-brown
    Identifier = { fg = '#7d6945' }, -- Darker tan
    Type = { fg = '#7a6c32' }, -- Olive green
    Statement = { fg = colors.black },
    PreProc = { fg = '#8a7248' }, -- Medium brown
    Special = { fg = '#bd8e00' }, -- Golden brown

    -- Additional syntax groups
    Character = { fg = '#9e7d45', bold = true },
    Boolean = { fg = '#aa6c4f', bold = true },
    Float = { fg = '#aa6c4f', italic = true },
    Conditional = { fg = colors.black, bold = true },
    Repeat = { fg = colors.black, bold = true },
    Label = { fg = colors.black, italic = true },
    Operator = { fg = '#6a563a' },
    Exception = { fg = colors.red, bold = true },
    Include = { fg = colors.blue, bold = true },
    Define = { fg = '#8a7248' },
    Macro = { fg = '#8a7248', italic = true },
    PreCondit = { fg = '#8a7248', italic = true },
    StorageClass = { fg = '#7a6c32', bold = true },
    Structure = { fg = '#7a6c32', bold = true },
    Typedef = { fg = '#7a6c32', italic = true },
    SpecialChar = { fg = '#bd8e00', italic = true },
    Tag = { fg = colors.yellow, underline = true },
    Delimiter = { fg = colors.fg },
    SpecialComment = { fg = colors.shadow, bold = true },
    Debug = { fg = colors.red },
    Underlined = { underline = true },
    Ignore = { fg = '#7c6e4e' },
    Error = { fg = colors.red, bold = true },
    Todo = { fg = colors.yellow, bg = colors.bg_darker, bold = true },
  },
}

-- Export colors separately for easier access in the vim file
M.colors = colors

return M
