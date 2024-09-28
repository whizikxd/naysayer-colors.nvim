-- nvim theme inspired by Jonathan Blow emacs theme

-- color palette
local p = {
  teal = "#062329",
  blue = "#0000FF",
  gold = "#D1B897",
  dgreen = "#2EC09C", -- Dark green
  lgreen = "#44B340", -- Lighter green
  mgreen = "#8CDE94", -- Mid green??
  lteal = "#7AD0C6",
  white = "#FFFFFF",
  ccolumn = "#394844", -- ColorColumn
  cline = "#1D3334", -- CursorLine
}

vim.g.colors_name = "naysayer"

vim.cmd.hi("clear")
vim.cmd.syntax("reset")

local config = {
  ["NSGold"] = { fg = p.gold },

  ["Normal"] = { bg = p.teal, fg = p.gold },
  ["NormalFloat"] = { link = "Normal" },
  ["NormalNC"] = { link = "Normal" },

  ["StatusLine"] = { bg = p.gold, fg = p.teal },
  ["StatusLineNC"] = { bg = p.teal, fg = p.gold },

  ["CursorLine"] = { bg = p.cline },
  ["CursorLineNR"] = { bg = p.teal },
  ["CursorLineFold"] = { bg = p.teal },
  ["CursorLineSign"] = { bg = p.teal },

  ["ColorColumn"] = { bg = p.ccolumn },

  ["Function"] = { link = "NSGold" },
  ["SpecialFunction"] = { link = "NSGold" },
  ["Identifier"] = { link = "NSGold" },
  ["Statement"] = { link = "NSGold" },
  ["Operator"] = { link = "NSGold" },
  ["Label"] = { link = "NSGold" },
  ["PreProc"] = { link = "NSGold" },
  ["Variable"] = { link = "NSGold" },

  ["Type"] = { fg = p.mgreen },
  ["Visual"] = { bg = p.blue },
  ["String"] = { fg = p.dgreen },
  ["Comment"] = { fg = p.lgreen },
  ["Constant"] = { fg = p.lteal },
  ["Keyword"] = { fg = p.white },

  ["Conditional"] = { fg = p.white },
  ["Repeat"] = { fg = p.white },
  ["Label"] = { fg = p.white },

  ["PreProc"] = { fg = p.mgreen },
  ["Include"] = { fg = p.mgreen },
  ["Define"] = { fg = p.mgreen },
  ["Macro"] = { fg = p.mgreen },
  ["PreCondit"] = { fg = p.mgreen },

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
  ["@variable.builtin"] = { link = "Variable" },
  ["@variable.parameter"] = { link = "Variable" },
  ["@variable.parameter.builtin"] = { link = "Variable" },
  ["@variable.member"] = { link = "Variable" },

  ["@punctuation.delimiter"] = { link = "NSGold" },
  ["@punctuation.bracket"] = { link = "NSGold" },
  ["@punctuation.special"] = { link = "NSGold" },

  ["@constructor"] = { link = "NSGold" },

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

  ["@keyword.directive"] = { fg = p.mgreen },
  ["@keyword.directive.define"] = { link = "@keyword.directive" },
  ["@keyword.import.c"] = { link = "@keyword.directive" },

  ["@type"] = { link = "Type" },
  ["@type.builtin"] = { link = "Type" },
  ["@type.definition"] = { link = "Type" },
}

for k, v in pairs(config) do
  vim.api.nvim_set_hl(0, k, v)
end
