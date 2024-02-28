require("obsidian").setup({
	workspaces = {
		{
			name = "personal",
			path = "~/Documentos/SB",
		},
	},
	note_frontmatter_func = function(note)
		local out = {}

		if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
      for k, v in pairs(note.metadata) do
        out[k] = v
      end
    end

		return out
	end,
})

vim.opt.conceallevel = 2
