-- nvim theme inspired by Jonathan Blow emacs theme

-- color palette
local p = {
  teal = "#062329",
  lteal = "#7AD0C6",
  blue = "#0000FF",
  lblue = "#ADD8E6",
  gold = "#D1B897",
  yellow = "#F9FF54",
  lyellow = "#FCE094",
  dgreen = "#2EC09C", -- Dark green
  lgreen = "#44B340", -- Lighter green
  mgreen = "#8CDE94", -- Mid green??
  darkgrey1 = "#4F5258", -- NvimDarkGrey4
  darkgrey2 = "#2C2E33", -- NvimDarkGrey3
  white = "#FFFFFF",
  pink = "#FF008C",
  red = "#D64C42",
  lred = "#FFBBBB",
}

vim.g.colors_name = "naysayer"
vim.o.background = "dark"

vim.cmd.hi("clear")
vim.cmd.syntax("reset")

local groups = {
  ["NaysayerGold"] = { fg = p.gold },
  ["NaysayerWhite"] = { fg = p.white },
  ["NaysayerLTeal"] = { fg = p.lteal },
  ["NaysayerDGreen"] = { fg = p.dgreen },
  ["NaysayerMGreen"] = { fg = p.mgreen },
  ["NaysayerLGreen"] = { fg = p.lgreen },
  ["NaysayerDGrey1"] = { fg = p.darkgrey1 },
  ["NaysayerDGrey2"] = { fg = p.darkgrey2 },

  ["Normal"] = { fg = p.gold, bg = p.teal },
  ["NormalFloat"] = { link = "Normal" },
  ["NormalNC"] = { link = "Normal" },
  ["CursorLine"] = { bg = p.darkgrey2 },
  ["CursorColumn"] = { link = "CursorLine" },
  ["TabLineFill"] = { fg = p.gold, bg = p.teal },
  ["TabLineSel"] = { fg = p.teal, bg = p.gold },
  ["TabLine"] = { link = "TabLineFill" },
  ["MatchParen"] = { bg = p.darkgrey1 },
  ["ColorColumn"] = { bg = p.darkgrey1 },
 --  ["Conceal"] = { },
  ["CursorLineNr"] = { link = "NaysayerGold" },
  -- ["NonText"] = { },
  -- ["SpecialKey"] = { },
  ["Visual"] = { bg = p.blue },
  ["VisualNOS"] = { link = "Visual" },
  ["Search"] = { fg = p.teal, bg = p.pink },
  ["IncSearch"] = { link = "Search" },
  ["CurSearch"] = { link = "Search" },
 --  ["QuickFixLine"] = { },
 --  ["Underlined"] = { },
  ["StatusLine"] = { fg = p.teal, bg = p.gold },
  ["StatusLineNC"] = { fg = p.gold, bg = p.teal },
 --  ["WinBar"] = { },
 --  ["WinBarNC"] = { },
 --  ["WinSeparator"] = { },
  ["WildMenu"] = { link = "PmenuSel" },
 --  ["Directory"] = { },
 --  ["Title"] = { },
  ["ErrorMsg"] = { fg = p.lred },
  ["MoreMsg"] = { link = "NaysayerGold" },
  ["ModeMsg"] = { link = "NaysayerGold" },
 --  ["Question"] = { },
  ["WarningMsg"] = { fg = p.lyellow },
  ["LineNr"] = { link = "NaysayerDGrey1" },
 --  ["SignColumn"] = { },
 --  ["Folded"] = { },
 --  ["FoldColumn"] = { },
  ["Cursor"] = { link = "NaysayerGold" },
  ["vCursor"] = { link = "Cursor" },
  ["iCursor"] = { link = "Cursor" },
  ["lCursor"] = { link = "Cursor" },
  ["Special"] = { link = "NaysayerDGreen" },
  ["Comment"] = { link = "NaysayerLGreen" },
 --  ["Todo"] = { },
 --  ["Done"] = { },
  ["Error"] = { fg = p.teal, bg = p.red },
  ["Statement"] = { link = "NaysayerWhite" },
  ["Conditional"] = { link = "NaysayerWhite" },
  ["Repeat"] = { link = "NaysayerWhite" },
  ["Label"] = { link = "NaysayerWhite" },
  ["Exception"] = { link = "NaysayerWhite" },
  ["Operator"] = { link = "NaysayerGold" },
  ["Keyword"] = { link = "NaysayerWhite" },
  ["Identifier"] = { link = "NaysayerGold" },
  ["Function"] = { link = "NaysayerGold" },
  ["PreProc"] = { link = "NaysayerMGreen" },
  ["Include"] = { link = "NaysayerMGreen" },
  ["Define"] = { link = "NaysayerMGreen" },
  ["Macro"] = { link = "NaysayerMGreen" },
  ["PreCondit"] = { link = "NaysayerMGreen" },
  ["Constant"] = { link = "NaysayerLTeal" },
  ["Character"] = { link = "NaysayerDGreen" },
  ["String"] = { link = "NaysayerDGreen" },
  ["Boolean"] = { link = "Constant" },
  ["Number"] = { link = "Constant" },
  ["Float"] = { link = "Constant" },
  ["Type"] = { link = "NaysayerMGreen" },
  ["Variable"] = { link = "NaysayerGold" },
  ["StorageClass"] = { link = "NaysayerWhite" },
  ["Structure"] = { link = "NaysayerWhite" },
  ["Typedef"] = { link = "NaysayerWhite" },
  ["Pmenu"] = { bg = p.darkgrey2, fg = p.gold },
  ["PmenuSel"] = { bg = p.white, fg = p.darkgrey2 },
  ["PmenuSbar"] = { link = "Pmenu" },
  ["PmenuThumb"] = { bg = p.darkgrey1, fg = p.gold },
  ["DiffDelete"] = { fg = p.teal, bg = p.red },
  ["DiffAdd"] = { fg = p.teal, bg = p.dgreen },
  ["DiffChange"] = { fg = p.teal, bg = p.darkgrey1 },
  ["DiffText"] = { link = "DiffAdd" },
 --  ["SpellCap"] = { },
 --  ["SpellBad"] = { },
 --  ["SpellLocal"] = { },
 --  ["SpellRare"] = { },
  ["Whitespace"] = { link = "NaysayerDGrey1" },
  ["Delimiter"] = { link = "NaysayerGold" },
 --  ["EndOfBuffer"] = { },
  ["DiagnosticError"] = { fg = p.lred },
  ["DiagnosticSignError"] = { link = "DiagnosticError" },
  ["DiagnosticUnderlineError"] = { underline = true },
  ["DiagnosticFloatingError"] = { link = "DiagnosticError" },
  ["DiagnosticVirtualTextError"] = { link = "DiagnosticError" },

  ["DiagnosticWarn"] = { fg = p.lyellow },
  ["DiagnosticSignWarn"] = { link = "DiagnosticWarn" },
  ["DiagnosticUnderlineWarn"] = { underline = true },
  ["DiagnosticFloatingWarn"] = { link = "DiagnosticWarn" },
  ["DiagnosticVirtualTextWarn"] = { link = "DiagnosticWarn" },

  ["DiagnosticInfo"] = { link = "NaysayerLTeal" },
  ["DiagnosticSignInfo"] = { link = "DiagnosticInfo" },
  ["DiagnosticUnderlineInfo"] = { underline = true },
  ["DiagnosticFloatingInfo"] = { link = "DiagnosticInfo" },
  ["DiagnosticVirtualTextInfo"] = { link = "DiagnosticInfo" },

  ["DiagnosticHint"] = { fg = p.lblue },
  ["DiagnosticSignHint"] = { link = "DiagnosticHint" },
  ["DiagnosticUnderlineHint"] = { underline = true },
  ["DiagnosticFloatingHint"] = { link = "DiagnosticHint" },
  ["DiagnosticVirtualTextHint"] = { link = "DiagnosticHint" },

  ["DiagnosticOk"] = { link = "NaysayerLGreen" },

  ["luaTable"] = { link = "NaysayerGold" },

  ["@string"] = { link = "String" },
  ["@string.documentation"] = { link = "String" },
  ["@string.regexp"] = { link = "String" },
  ["@string.escape"] = { link = "String" },
  ["@string.special"] = { link = "String" },
  ["@string.special.symbol"] = { link = "String" },
  ["@string.special.path"] = { link = "String" },
  ["@string.special.url"] = { link = "String" },
  ["@constant"] = { link = "Constant" },
  ["@constant.builtin"] = { link = "Constant" },
  ["@constant.macro"] = { link = "Constant" },
  ["@variable"] = { link = "Variable" },
  ["@variable.c"] = { link = "Variable" },
  ["@variable.builtin"] = { link = "Variable" },
  ["@variable.parameter"] = { link = "Variable" },
  ["@variable.parameter.builtin"] = { link = "Variable" },
  ["@variable.member"] = { link = "Variable" },
  ["@punctuation.delimiter"] = { link = "NaysayerGold" },
  ["@punctuation.bracket"] = { link = "NaysayerGold" },
  ["@punctuation.special"] = { link = "NaysayerGold" },
  ["@constructor"] = { link = "NaysayerGold" },
  ["@comment"] = { link = "Comment" },
  ["@comment.documentation"] = { link = "Comment" },
  ["@keyword"] = { link = "Keyword" },
  ["@keyword.coroutine"] = { link = "Keyword" },
  ["@keyword.function"] = { link = "Keyword" },
  ["@keyword.operator"] = { link = "Keyword" },
  ["@keyword.import"] = { link = "Keyword" },
  ["@keyword.type"] = { link = "Keyword" },
  ["@keyword.modifier"] = { link = "Keyword" },
  ["@keyword.repeat"] = { link = "Keyword" },
  ["@keyword.return"] = { link = "Keyword" },
  ["@keyword.debug"] = { link = "Keyword" },
  ["@keyword.exception"] = { link = "Keyword" },

  ["@function"] = { link = "Function" },
  ["@function.builtin"] = { link = "Function" },

  ["@keyword.directive"] = { link = "NaysayerMGreen" },
  ["@keyword.directive.define"] = { link = "NaysayerMGreen" },
  ["@keyword.import.c"] = { link = "NaysayerMGreen" },

  ["@type"] = { link = "Type" },
  ["@type.builtin"] = { link = "Type" },
  ["@type.definition"] = { link = "Type" },
}

for k, v in pairs(groups) do
  vim.api.nvim_set_hl(0, k, v)
end
