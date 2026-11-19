local M = {}

local colors = require("pumice.palette")

M.setup = function()
	return {
		Normal = { fg = colors.fg, bg = colors.bg },
		Function = { fg = colors.fg },
		Statement = { fg = colors.fg },
		Keyword = { fg = colors.fg },
		Identifier = { fg = colors.fg },
		Type = { fg = colors.fg },
		PreProc = { fg = colors.fg },
		Special = { fg = colors.fg },

		Comment = { fg = colors.comment },
		Constant = { fg = colors.constant },
		String = { fg = colors.constant },
		Delimiter = { fg = colors.fade },

		["@lsp.mod.declaration"] = { fg = colors.var_declaration, bold = true },
		["@lsp.typemod.function.declaration"] = { fg = colors.function_declaration, bold = true },
		["@lsp.mod.definition"] = { link = "@lsp.mod.declaration" },
		["@lsp.typemod.function.definition"] = { link = "@lsp.typemod.function.declaration" },

		-- Editor UI
		NormalNC = { link = "Normal" },
		NormalFloat = { fg = colors.fg, bg = colors.bg_alt },
		FloatBorder = { fg = colors.border, bg = colors.bg_alt },
		FloatTitle = { fg = colors.fg, bg = colors.bg_alt, bold = true },
		FloatFooter = { fg = colors.fg_dim, bg = colors.bg_alt },
		Cursor = { fg = colors.bg, bg = colors.fg },
		CursorLine = { bg = colors.bg_sel },
		CursorColumn = { bg = colors.bg_sel },
		ColorColumn = { bg = colors.bg_alt },
		CursorLineNr = { fg = colors.fg, bold = true },
		LineNr = { fg = colors.fade },
		SignColumn = { bg = colors.bg },
		FoldColumn = { fg = colors.fade, bg = colors.bg },
		Folded = { fg = colors.fg_dim, bg = colors.bg_alt },
		Visual = { bg = colors.visual },
		VisualNOS = { link = "Visual" },
		NonText = { fg = colors.border },
		Whitespace = { fg = colors.border },
		SpecialKey = { fg = colors.border },
		EndOfBuffer = { fg = colors.bg },
		Conceal = { fg = colors.fade },
		WinSeparator = { fg = colors.border },
		VertSplit = { link = "WinSeparator" },
		WinBar = { fg = colors.fg_dim, bg = colors.bg },
		WinBarNC = { fg = colors.fade, bg = colors.bg },
		MatchParen = { fg = colors.function_declaration, bold = true, underline = true },
		Directory = { fg = colors.fg },
		Title = { fg = colors.fg, bold = true },
		Underlined = { underline = true },
		Todo = { fg = colors.bg, bg = colors.var_declaration, bold = true },
		Error = { fg = colors.error },
		QuickFixLine = { bg = colors.bg_sel, bold = true },

		-- Search
		Search = { fg = colors.bg, bg = colors.fg_dim },
		IncSearch = { fg = colors.bg, bg = colors.var_declaration },
		CurSearch = { link = "IncSearch" },
		Substitute = { link = "IncSearch" },

		-- Popup menu
		Pmenu = { fg = colors.fg_dim, bg = colors.bg_alt },
		PmenuSel = { fg = colors.fg, bg = colors.bg_visual, bold = true },
		PmenuKind = { fg = colors.fade, bg = colors.bg_alt },
		PmenuExtra = { fg = colors.fade, bg = colors.bg_alt },
		PmenuMatch = { fg = colors.fg, bg = colors.bg_alt, bold = true },
		PmenuMatchSel = { fg = colors.fg, bg = colors.bg_visual, bold = true },
		PmenuSbar = { bg = colors.bg_alt },
		PmenuThumb = { bg = colors.border },
		WildMenu = { link = "PmenuSel" },

		-- Statusline and tabline
		StatusLine = { fg = colors.fg_dim, bg = colors.bg_alt },
		StatusLineNC = { fg = colors.fade, bg = colors.bg },
		TabLine = { fg = colors.fade, bg = colors.bg_alt },
		TabLineSel = { fg = colors.fg, bg = colors.bg, bold = true },
		TabLineFill = { bg = colors.bg_alt },

		-- Messages
		MsgArea = { fg = colors.fg },
		ModeMsg = { fg = colors.fg_dim, bold = true },
		MoreMsg = { fg = colors.function_declaration },
		Question = { fg = colors.function_declaration },
		ErrorMsg = { fg = colors.error, bold = true },
		WarningMsg = { fg = colors.var_declaration },

		-- Diagnostics
		DiagnosticError = { fg = colors.error },
		DiagnosticWarn = { fg = colors.var_declaration },
		DiagnosticInfo = { fg = colors.function_declaration },
		DiagnosticHint = { fg = colors.fg_dim },
		DiagnosticOk = { fg = colors.constant },
		DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
		DiagnosticUnderlineWarn = { undercurl = true, sp = colors.var_declaration },
		DiagnosticUnderlineInfo = { undercurl = true, sp = colors.function_declaration },
		DiagnosticUnderlineHint = { undercurl = true, sp = colors.fg_dim },
		DiagnosticUnnecessary = { fg = colors.fade },
		DiagnosticDeprecated = { strikethrough = true },

		-- Diff and git
		Added = { fg = colors.constant },
		Changed = { fg = colors.function_declaration },
		Removed = { fg = colors.error },
		DiffAdd = { bg = colors.diff_add },
		DiffChange = { bg = colors.diff_change },
		DiffText = { bg = colors.diff_text },
		DiffDelete = { fg = colors.error, bg = colors.diff_delete },

		-- Spelling
		SpellBad = { undercurl = true, sp = colors.error },
		SpellCap = { undercurl = true, sp = colors.var_declaration },
		SpellLocal = { undercurl = true, sp = colors.function_declaration },
		SpellRare = { undercurl = true, sp = colors.comment },

		-- Plugins
		SnacksPickerMatch = { fg = colors.var_declaration, bold = true },
		SnacksPickerDir = { fg = colors.fade },
		SnacksDashboardHeader = { fg = colors.fg_dim },
		SnacksDashboardIcon = { fg = colors.fg_dim },
		SnacksDashboardKey = { fg = colors.var_declaration },
		SnacksDashboardDesc = { fg = colors.fg },
		SnacksDashboardFooter = { fg = colors.fade },
		SnacksIndent = { fg = colors.bg_visual },
		SnacksIndentScope = { fg = colors.border },
		BlinkCmpLabelMatch = { fg = colors.fg, bold = true },
		BlinkCmpKind = { fg = colors.fade },
		WhichKey = { fg = colors.var_declaration },
		WhichKeyGroup = { fg = colors.function_declaration },
		WhichKeyDesc = { fg = colors.fg },
		WhichKeySeparator = { fg = colors.fade },
		WhichKeyNormal = { link = "NormalFloat" },
		FlashLabel = { fg = colors.bg, bg = colors.var_declaration, bold = true },
		FlashMatch = { fg = colors.fg_dim },
		FlashCurrent = { fg = colors.fg, bold = true },
		FlashBackdrop = { fg = colors.fade },
		NoiceCmdlinePopupBorder = { link = "FloatBorder" },
		NoiceCmdlineIcon = { fg = colors.fg_dim },
		BufferLineFill = { bg = colors.bg_alt },
		TodoBgTODO = { link = "Todo" },
	}
end

return M
