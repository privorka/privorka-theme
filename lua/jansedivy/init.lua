local M = { }

local colors = {
  background = "#222426",
  foreground = "#C1C3C2",
  selection  = "#3B3F44",
  line       = "#3B3F44",
  comment    = "#6C747B",
  red        = "#C36364",
  orange     = "#EA9A67",
  yellow     = "#E9BF77",
  green      = "#BFC674",
  aqua       = "#90C7C0",
  blue       = "#7FA1BB",
  purple     = "#AF92B7",
  window     = "#303030",
  darkcolumn = "#1c1c1c",
  addbg      = "#5F875F",
  search     = "#2B2D30",
  status     = "#262626",
  addfg      = "#d7ffaf",
  changebg   = "#5F5F87",
  changefg   = "#d7d7ff",
  darkblue   = "#00005f",
  darkcyan   = "#005f87",
  darkred    = "#5f0000",
  darkpurple = "#5f005f",
 }

local groups = {
  ColorColumn  = { bg = colors.line },
  CursorColumn = { bg = colors.line },
  CursorLine   = { fg = colors.none, bg = colors.line },
  Directory    = { fg = colors.blue },
  DiffAdd      = { fg = colors.addfg, bg = colors.addbg },
  DiffChange   = { fg = colors.changefg, bg = colors.changebg },
  DiffDelete   = { fg = colors.background, bg = colors.red },
  DiffText     = { fg = colors.background, bg = colors.blue },
  ErrorMsg     = { fg = colors.background, bg = colors.red },
  VertSplit    = { fg = colors.window },
  WinSeparator = { fg = colors.window },
  Folded       = { fg = colors.comment, bg = colors.darkcolumn },
  FoldColumn   = { fg = colors.none, bg = colors.darkcolumn },
  SignColumn   = { fg = colors.none, bg = colors.darkcolumn },
  LineNr       = { fg = colors.selection },
  CursorLineNr = { fg = colors.yellow },
  MatchParen   = { fg = colors.background, bg = colors.changebg },
  ModeMsg      = { fg = colors.green },
  MoreMsg      = { fg = colors.green },
  NonText      = { fg = colors.selection },
  Pmenu        = { fg = colors.foreground, bg = colors.selection },
  PmenuSel     = { fg = colors.foreground, bg = colors.selection, reverse = true },
  Question     = { fg = colors.green },
  Search       = { fg = colors.search, bg = colors.yellow },
  SpecialKey   = { fg = colors.selection },

  SpellCap     = { fg = colors.blue, bg = colors.darkblue, underline = true },
  SpellLocal   = { fg = colors.aqua, bg = colors.darkcyan, underline = true },
  SpellBad     = { fg = colors.red, bg = colors.darkred, underline = true },
  SpellRare    = { fg = colors.purple, bg = colors.darkpurple, underline = true },

  StatusLine   = { fg = colors.green, bg = colors.status },
  StatusLineNC = { fg = colors.window, bg = colors.comment, reverse = true },

  TabLine      = { fg = colors.foreground, bg = colors.darkcolumn, reverse = true },
  Title        = { fg = colors.yellow },
  Visual       = { fg = colors.none, bg = colors.selection },
  WarningMsg   = { fg = colors.red },

  Normal       = { fg = colors.foreground, bg = colors.background },
  Comment      = { fg = colors.comment },
  Constant     = { fg = colors.red },
  String       = { fg = colors.green },
  Identifier   = { fg = colors.purple },
  Function     = { fg = colors.yellow },
  Statement    = { fg = colors.blue },
  Operator     = { fg = colors.aqua },
  PreProc      = { fg = colors.aqua },
  Type         = { fg = colors.orange },
  Structure    = { fg = colors.aqua },
  Special      = { fg = colors.green },

  Underlined   = { fg = colors.blue },
  Ignore       = { fg = colors.none },
  Error        = { fg = colors.red, bg = colors.darkred, underline = true },
  Todo         = { fg = colors.addfg },
  qfLineNr     = { fg = colors.yellow },

  DiagnosticError = { fg = colors.red },
 }

function M.load()
  vim.cmd.hi("clear")
  vim.cmd.syntax("reset")

  vim.g.colors_name = "jansedivy"
  vim.g.background = "dark"
  vim.o.termguicolors = true

  for group, hl in pairs(groups) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

return M
