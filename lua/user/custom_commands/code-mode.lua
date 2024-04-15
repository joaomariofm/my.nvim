local function code_mode ()
	vim.opt.number = true
	vim.opt.relativenumber = true
end

vim.api.nvim_create_user_command("CodeMode", code_mode, {})
