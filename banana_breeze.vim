" banana_breeze.vim - A light, banana-inspired Neovim theme
highlight clear
if exists("syntax_on")
  syntax reset
endif

set background=light
let g:colors_name="banana_breeze"

lua << EOF
  local banana = require('banana_breeze')
  local colors = banana.colors
  
  -- Apply base syntax highlighting
  for group, style in pairs(banana.base_syntax) do
    vim.api.nvim_set_hl(0, group, style)
  end
  
  -- Editor UI
  vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
  vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.fg, bg = colors.bg_darker })
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = colors.hair_dark, bg = colors.bg_darker })
  vim.api.nvim_set_hl(0, "FloatTitle", { fg = colors.yellow, bg = colors.bg_darker, bold = true })
  
  -- Cursor
  vim.api.nvim_set_hl(0, "Cursor", { fg = colors.bg, bg = colors.brown })
  vim.api.nvim_set_hl(0, "iCursor", { fg = colors.bg, bg = colors.brown })
  vim.api.nvim_set_hl(0, "vCursor", { fg = colors.bg, bg = colors.shadow })
  vim.api.nvim_set_hl(0, "lCursor", { fg = colors.bg, bg = colors.brown })
  vim.api.nvim_set_hl(0, "CursorIM", { fg = colors.bg, bg = colors.purple })
  
  -- Line and cursor highlighting
  vim.api.nvim_set_hl(0, "LineNr", { fg = colors.brown, bg = colors.bg })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.bg_darker })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.yellow, bold = true })
  vim.api.nvim_set_hl(0, "CursorColumn", { bg = colors.bg_darker })
  
  -- Search
  vim.api.nvim_set_hl(0, "Search", { fg = colors.fg, bg = colors.yellow })
  vim.api.nvim_set_hl(0, "IncSearch", { fg = colors.bg, bg = colors.brown, bold = true })
  
  -- Selection
  vim.api.nvim_set_hl(0, "Visual", { bg = colors.yellow_dim })
  vim.api.nvim_set_hl(0, "VisualNOS", { bg = colors.yellow_dim, italic = true })
  
  -- Popup menu
  vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.fg, bg = colors.bg_darker })
  vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.bg, bg = colors.yellow, bold = true })
  vim.api.nvim_set_hl(0, "PmenuSbar", { bg = colors.bg_darker })
  vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.hair_dark })
  
  -- UI elements
  vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.bg, bg = colors.brown, bold = true })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.fg, bg = colors.hair_dark })
  vim.api.nvim_set_hl(0, "TabLine", { fg = colors.fg, bg = colors.bg_darker })
  vim.api.nvim_set_hl(0, "TabLineFill", { fg = colors.fg, bg = colors.bg })
  vim.api.nvim_set_hl(0, "TabLineSel", { fg = colors.yellow, bg = colors.bg, bold = true })
  
  vim.api.nvim_set_hl(0, "Title", { fg = colors.yellow, bold = true })
  vim.api.nvim_set_hl(0, "Directory", { fg = colors.blue })
  
  vim.api.nvim_set_hl(0, "SignColumn", { bg = colors.bg })
  vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.hair_dark })
  vim.api.nvim_set_hl(0, "ColorColumn", { bg = colors.bg_darker })
  
  -- Messages
  vim.api.nvim_set_hl(0, "WarningMsg", { fg = colors.orange, bold = true })
  vim.api.nvim_set_hl(0, "ErrorMsg", { fg = colors.red, bold = true })
  vim.api.nvim_set_hl(0, "MoreMsg", { fg = colors.green, bold = true })
  vim.api.nvim_set_hl(0, "Question", { fg = colors.blue, bold = true })
  
  -- Folding
  vim.api.nvim_set_hl(0, "Folded", { fg = colors.shadow, bg = colors.bg_darker, italic = true })
  vim.api.nvim_set_hl(0, "FoldColumn", { fg = colors.brown, bg = colors.bg })
  
  -- Diff
  vim.api.nvim_set_hl(0, "DiffAdd", { bg = colors.green_bg })
  vim.api.nvim_set_hl(0, "DiffChange", { bg = colors.blue_bg })
  vim.api.nvim_set_hl(0, "DiffDelete", { bg = colors.red_bg, fg = colors.red, italic = true })
  vim.api.nvim_set_hl(0, "DiffText", { bg = colors.yellow, bold = true })
  
  -- Spell checking
  vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = colors.red })
  vim.api.nvim_set_hl(0, "SpellCap", { undercurl = true, sp = colors.blue })
  vim.api.nvim_set_hl(0, "SpellRare", { undercurl = true, sp = colors.purple })
  vim.api.nvim_set_hl(0, "SpellLocal", { undercurl = true, sp = colors.green })
  
  -- LSP
  vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.red })
  vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colors.orange })
  vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = colors.green })
  
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = colors.orange })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = colors.blue })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = colors.green })
  
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = colors.red, bg = colors.red_bg })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = colors.orange, bg = colors.yellow_dim })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = colors.blue, bg = colors.blue_bg })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = colors.green, bg = colors.green_bg })
  
  vim.api.nvim_set_hl(0, "LspReferenceText", { bg = colors.yellow_dim })
  vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = colors.yellow_dim })
  vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = colors.yellow_dim, bold = true })
  
  -- Treesitter
  vim.api.nvim_set_hl(0, "@variable", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "@function", { fg = "#916916", bold = true })
  vim.api.nvim_set_hl(0, "@function.builtin", { fg = colors.orange })
  vim.api.nvim_set_hl(0, "@function.macro", { fg = "#8a7248", italic = true })
  vim.api.nvim_set_hl(0, "@parameter", { fg = colors.fg, italic = true })
  vim.api.nvim_set_hl(0, "@method", { fg = "#916916", bold = true })
  vim.api.nvim_set_hl(0, "@field", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "@property", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "@constructor", { fg = "#916916", bold = true })
  
  vim.api.nvim_set_hl(0, "@conditional", { fg = colors.black, bold = true })
  vim.api.nvim_set_hl(0, "@repeat", { fg = colors.black, bold = true })
  vim.api.nvim_set_hl(0, "@exception", { fg = colors.red, bold = true })
  
  vim.api.nvim_set_hl(0, "@constant", { fg = "#a26441" })
  vim.api.nvim_set_hl(0, "@constant.builtin", { fg = "#a26441", bold = true })
  vim.api.nvim_set_hl(0, "@constant.macro", { fg = "#a26441", italic = true })
  
  vim.api.nvim_set_hl(0, "@string", { fg = "#9e7d45" })
  vim.api.nvim_set_hl(0, "@string.regex", { fg = colors.orange })
  vim.api.nvim_set_hl(0, "@string.escape", { fg = colors.orange, bold = true })
  vim.api.nvim_set_hl(0, "@character", { fg = "#9e7d45", bold = true })
  vim.api.nvim_set_hl(0, "@number", { fg = "#aa6c4f" })
  vim.api.nvim_set_hl(0, "@boolean", { fg = "#aa6c4f", bold = true })
  vim.api.nvim_set_hl(0, "@float", { fg = "#aa6c4f", italic = true })
  
  -- Git
  vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colors.green })
  vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colors.red })
  
  -- Terminal colors
  vim.g.terminal_color_0 = "#332a22"  -- black
  vim.g.terminal_color_1 = colors.red  -- red
  vim.g.terminal_color_2 = colors.green -- green
  vim.g.terminal_color_3 = colors.yellow -- yellow
  vim.g.terminal_color_4 = colors.blue -- blue
  vim.g.terminal_color_5 = colors.purple -- magenta
  vim.g.terminal_color_6 = "#40a098" -- cyan
  vim.g.terminal_color_7 = "#e1d9c2" -- white
  vim.g.terminal_color_8 = "#665d55" -- bright black
  vim.g.terminal_color_9 = "#d46a6a" -- bright red
  vim.g.terminal_color_10 = "#8fb867" -- bright green
  vim.g.terminal_color_11 = "#d8b545" -- bright yellow
  vim.g.terminal_color_12 = "#6b95bc" -- bright blue
  vim.g.terminal_color_13 = "#a673d2" -- bright magenta
  vim.g.terminal_color_14 = "#56c9bf" -- bright cyan
  vim.g.terminal_color_15 = colors.bg -- bright white
EOF
