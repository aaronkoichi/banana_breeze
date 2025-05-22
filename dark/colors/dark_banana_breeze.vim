" dark_banana_breeze.vim - A dark, banana-inspired Neovim theme
highlight clear
if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name="dark_banana_breeze"

lua << EOF
  local banana = require('dark_banana_breeze')
  local colors = banana.colors
  
  -- Apply base syntax highlighting
  for group, style in pairs(banana.base_syntax) do
    vim.api.nvim_set_hl(0, group, style)
  end
  
  -- Editor UI
  vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
  vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.fg, bg = colors.bg_lighter })
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = colors.yellow_dim, bg = colors.bg_lighter })
  vim.api.nvim_set_hl(0, "FloatTitle", { fg = colors.yellow, bg = colors.bg_lighter, bold = true })
  
  -- Cursor
  vim.api.nvim_set_hl(0, "Cursor", { fg = colors.bg, bg = colors.yellow })
  vim.api.nvim_set_hl(0, "iCursor", { fg = colors.bg, bg = colors.yellow })
  vim.api.nvim_set_hl(0, "vCursor", { fg = colors.bg, bg = colors.shadow })
  vim.api.nvim_set_hl(0, "lCursor", { fg = colors.bg, bg = colors.yellow })
  vim.api.nvim_set_hl(0, "CursorIM", { fg = colors.bg, bg = colors.purple })
  
  -- Line and cursor highlighting
  vim.api.nvim_set_hl(0, "LineNr", { fg = colors.brown, bg = colors.bg })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.bg_lighter })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.yellow, bold = true })
  vim.api.nvim_set_hl(0, "CursorColumn", { bg = colors.bg_lighter })
  
  -- Search
  vim.api.nvim_set_hl(0, "Search", { fg = colors.bg, bg = colors.yellow })
  vim.api.nvim_set_hl(0, "IncSearch", { fg = colors.bg, bg = colors.yellow_dim, bold = true })
  
  -- Selection
  vim.api.nvim_set_hl(0, "Visual", { bg = colors.yellow_dark })
  vim.api.nvim_set_hl(0, "VisualNOS", { bg = colors.yellow_dark, italic = true })
  
  -- Popup menu
  vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.fg, bg = colors.bg_lighter })
  vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.bg, bg = colors.yellow, bold = true })
  vim.api.nvim_set_hl(0, "PmenuSbar", { bg = colors.bg_darker })
  vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.brown })
  
  -- UI elements
  vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.bg, bg = colors.yellow, bold = true })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.fg, bg = colors.bg_lighter })
  vim.api.nvim_set_hl(0, "TabLine", { fg = colors.fg, bg = colors.bg_lighter })
  vim.api.nvim_set_hl(0, "TabLineFill", { fg = colors.fg, bg = colors.bg })
  vim.api.nvim_set_hl(0, "TabLineSel", { fg = colors.bg, bg = colors.yellow, bold = true })
  
  vim.api.nvim_set_hl(0, "Title", { fg = colors.yellow, bold = true })
  vim.api.nvim_set_hl(0, "Directory", { fg = colors.blue })
  
  vim.api.nvim_set_hl(0, "SignColumn", { bg = colors.bg })
  vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.bg_lighter })
  vim.api.nvim_set_hl(0, "ColorColumn", { bg = colors.bg_lighter })
  
  -- Messages
  vim.api.nvim_set_hl(0, "WarningMsg", { fg = colors.orange, bold = true })
  vim.api.nvim_set_hl(0, "ErrorMsg", { fg = colors.red, bold = true })
  vim.api.nvim_set_hl(0, "MoreMsg", { fg = colors.green, bold = true })
  vim.api.nvim_set_hl(0, "Question", { fg = colors.blue, bold = true })
  
  -- Folding
  vim.api.nvim_set_hl(0, "Folded", { fg = colors.brown, bg = colors.bg_lighter, italic = true })
  vim.api.nvim_set_hl(0, "FoldColumn", { fg = colors.brown, bg = colors.bg })
  
  -- Diff
  vim.api.nvim_set_hl(0, "DiffAdd", { bg = colors.green_bg })
  vim.api.nvim_set_hl(0, "DiffChange", { bg = colors.blue_bg })
  vim.api.nvim_set_hl(0, "DiffDelete", { bg = colors.red_bg, fg = colors.red, italic = true })
  vim.api.nvim_set_hl(0, "DiffText", { bg = colors.yellow_dark, bold = true })
  
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
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = colors.orange, bg = colors.brown_bg })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = colors.blue, bg = colors.blue_bg })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = colors.green, bg = colors.green_bg })
  
  vim.api.nvim_set_hl(0, "LspReferenceText", { bg = colors.yellow_dark })
  vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = colors.yellow_dark })
  vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = colors.yellow_dark, bold = true })
  
  -- Treesitter
  vim.api.nvim_set_hl(0, "@variable", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "@function", { fg = colors.yellow, bold = true })
  vim.api.nvim_set_hl(0, "@function.builtin", { fg = colors.orange })
  vim.api.nvim_set_hl(0, "@function.macro", { fg = colors.orange, italic = true })
  vim.api.nvim_set_hl(0, "@parameter", { fg = colors.fg, italic = true })
  vim.api.nvim_set_hl(0, "@method", { fg = colors.yellow, bold = true })
  vim.api.nvim_set_hl(0, "@field", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "@property", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "@constructor", { fg = colors.yellow, bold = true })
  
  vim.api.nvim_set_hl(0, "@conditional", { fg = colors.white, bold = true })
  vim.api.nvim_set_hl(0, "@repeat", { fg = colors.white, bold = true })
  vim.api.nvim_set_hl(0, "@exception", { fg = colors.red, bold = true })
  
  vim.api.nvim_set_hl(0, "@constant", { fg = '#d4a775' })
  vim.api.nvim_set_hl(0, "@constant.builtin", { fg = '#d4a775', bold = true })
  vim.api.nvim_set_hl(0, "@constant.macro", { fg = '#d4a775', italic = true })
  
  vim.api.nvim_set_hl(0, "@string", { fg = '#d4b070' })
  vim.api.nvim_set_hl(0, "@string.regex", { fg = colors.orange })
  vim.api.nvim_set_hl(0, "@string.escape", { fg = colors.orange, bold = true })
  vim.api.nvim_set_hl(0, "@character", { fg = '#d4b070', bold = true })
  vim.api.nvim_set_hl(0, "@number", { fg = '#e8967a' })
  vim.api.nvim_set_hl(0, "@boolean", { fg = '#e8967a', bold = true })
  vim.api.nvim_set_hl(0, "@float", { fg = '#e8967a', italic = true })
  
  -- Git
  vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colors.green })
  vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colors.red })
  
  -- Terminal colors for dark mode
  vim.g.terminal_color_0 = colors.bg_darker  -- black
  vim.g.terminal_color_1 = colors.red  -- red
  vim.g.terminal_color_2 = colors.green -- green
  vim.g.terminal_color_3 = colors.yellow -- yellow
  vim.g.terminal_color_4 = colors.blue -- blue
  vim.g.terminal_color_5 = colors.purple -- magenta
  vim.g.terminal_color_6 = "#56c9bf" -- cyan (brightened)
  vim.g.terminal_color_7 = colors.fg -- white
  vim.g.terminal_color_8 = colors.bg_lighter -- bright black
  vim.g.terminal_color_9 = "#ff8a8a" -- bright red
  vim.g.terminal_color_10 = colors.green -- bright green
  vim.g.terminal_color_11 = colors.yellow -- bright yellow
  vim.g.terminal_color_12 = "#8fb5dc" -- bright blue
  vim.g.terminal_color_13 = "#c093f2" -- bright magenta
  vim.g.terminal_color_14 = "#76e9df" -- bright cyan
  vim.g.terminal_color_15 = colors.white -- bright white
EOF
