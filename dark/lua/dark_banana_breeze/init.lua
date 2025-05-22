-- ~/.config/nvim/lua/dark_banana_breeze.lua
local colors = {
  bg = '#2a2520', -- Dark brown background
  bg_lighter = '#332a22', -- Lighter background for UI elements
  bg_darker = '#1f1a17', -- Darker background for contrast
  fg = '#e6d5b8', -- Light cream text
  yellow = '#ffd461', -- Banana yellow (accent) - keeping bright
  yellow_dim = '#e6b954', -- Softer yellow
  yellow_dark = '#b8941f', -- Darker yellow for backgrounds
  skin = '#c39b80', -- Skin tone - keeping warm
  hair_light = '#f8e6c9', -- Light blonde hair - keeping light
  hair_dark = '#dfc394', -- Darker blonde hair
  shadow = '#5c4f5a', -- Purple-tinted shadow
  white = '#f5f0d8', -- Light cream white

  -- Additional colors for syntax and UI elements
  green = '#8fb867', -- Success/add - brighter for dark mode
  green_bg = '#2d3d1f', -- Dark green background
  red = '#d46a6a', -- Error/delete - brighter for dark mode
  red_bg = '#3d2222', -- Dark red background
  blue = '#6b95bc', -- Info/changed - brighter for dark mode
  blue_bg = '#1f2a33', -- Dark blue background
  purple = '#a673d2', -- Special - brighter for dark mode
  orange = '#e89b5f', -- Warnings - brighter for dark mode
  brown = '#9e7d45', -- Secondary accent
  brown_dark = '#6a563a', -- Dark accent
  brown_bg = '#3d3227', -- Brown background
}

local M = {
  -- Lualine theme configuration
  normal = {
    a = { fg = colors.bg, bg = colors.yellow, gui = 'bold' },
    b = { fg = colors.yellow, bg = colors.bg_lighter },
    c = { fg = colors.fg, bg = colors.bg_darker },
  },
  insert = {
    a = { fg = colors.bg, bg = colors.skin, gui = 'bold' },
    b = { fg = colors.skin, bg = colors.bg_lighter },
    c = { fg = colors.fg, bg = colors.bg_darker },
  },
  visual = {
    a = { fg = colors.white, bg = colors.shadow, gui = 'bold' },
    b = { fg = colors.shadow, bg = colors.bg_lighter },
    c = { fg = colors.fg, bg = colors.bg_darker },
  },
  replace = {
    a = { fg = colors.bg, bg = colors.yellow_dim, gui = 'bold' },
    b = { fg = colors.yellow_dim, bg = colors.bg_lighter },
    c = { fg = colors.fg, bg = colors.bg_darker },
  },
  command = {
    a = { fg = colors.bg, bg = colors.white, gui = 'bold' },
    b = { fg = colors.white, bg = colors.bg_lighter },
    c = { fg = colors.fg, bg = colors.bg_darker },
  },
  inactive = {
    a = { fg = colors.brown, bg = colors.bg_lighter, gui = 'bold' },
    b = { fg = colors.brown, bg = colors.bg },
    c = { fg = colors.brown, bg = colors.bg },
  },

  -- Syntax highlighting with improved contrast for dark mode
  base_syntax = {
    Comment = { fg = colors.brown, italic = true },
    String = { fg = '#d4b070' }, -- Lighter yellow-brown for strings
    Number = { fg = '#e8967a' }, -- Lighter red-brown for numbers
    Function = { fg = colors.yellow, bold = true }, -- Bright yellow for functions
    Keyword = { fg = colors.white, bold = true },
    Constant = { fg = '#d4a775' }, -- Lighter orange-brown
    Identifier = { fg = colors.fg }, -- Light cream
    Type = { fg = '#b8c45f' }, -- Light olive green
    Statement = { fg = colors.white },
    PreProc = { fg = colors.orange }, -- Bright orange
    Special = { fg = colors.yellow_dim }, -- Soft yellow

    -- Additional syntax groups
    Character = { fg = '#d4b070', bold = true },
    Boolean = { fg = '#e8967a', bold = true },
    Float = { fg = '#e8967a', italic = true },
    Conditional = { fg = colors.white, bold = true },
    Repeat = { fg = colors.white, bold = true },
    Label = { fg = colors.white, italic = true },
    Operator = { fg = colors.fg },
    Exception = { fg = colors.red, bold = true },
    Include = { fg = colors.blue, bold = true },
    Define = { fg = colors.orange },
    Macro = { fg = colors.orange, italic = true },
    PreCondit = { fg = colors.orange, italic = true },
    StorageClass = { fg = '#b8c45f', bold = true },
    Structure = { fg = '#b8c45f', bold = true },
    Typedef = { fg = '#b8c45f', italic = true },
    SpecialChar = { fg = colors.yellow, italic = true },
    Tag = { fg = colors.yellow, underline = true },
    Delimiter = { fg = colors.fg },
    SpecialComment = { fg = colors.brown, bold = true },
    Debug = { fg = colors.red },
    Underlined = { underline = true },
    Ignore = { fg = colors.brown },
    Error = { fg = colors.red, bold = true },
    Todo = { fg = colors.bg, bg = colors.yellow, bold = true },
  },
}

-- Export colors separately for easier access in the vim file
M.colors = colors

return M
