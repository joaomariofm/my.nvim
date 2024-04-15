local function write_mode ()
	vim.opt.number = false
	vim.opt.relativenumber = false
end

vim.api.nvim_create_user_command("WriteMode", write_mode, {})
