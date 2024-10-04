local M = {}

M.encIndex = 1
local encodings = {'latin1', 'iso-8859-15', 'utf-8', 'ucs-bom'}
M.toggleEncode = function()
	local command = 'e ++enc=' .. encodings[M.encIndex] .. ' %:p'
	print("Reopen file using " .. encodings[M.encIndex] .. " encoding")
 	vim.cmd(command)
	if M.encIndex >=3 then
		M.encIndex = 1
	else
		M.encIndex = M.encIndex + 1
	end
end

return M
