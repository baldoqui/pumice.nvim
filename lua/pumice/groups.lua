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
	}
end

return M
