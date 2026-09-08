local M = {}

M.setup = function()
	if vim.g.colors_name then
		vim.cmd("highlight clear")
	end
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.g.colors_name = "pumice"

	local groups = require("pumice.groups").setup()
	for group, setting in pairs(groups) do
		vim.api.nvim_set_hl(0, group, setting)
	end
end

return M
