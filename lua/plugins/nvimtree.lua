return {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- set termguicolors to enable highlight groups
		vim.opt.termguicolors = true


		-- empty setup using defaults
		local api = require "nvim-tree.api"
		-- OR setup with some options
		require("nvim-tree").setup({
		  sort = {
		    sorter = "case_sensitive",
		  },
		  view = {
		    width = 30,
		    relativenumber = true,
		    side = "right"
		  },
		  renderer = {
		    group_empty = true,
		  },
		  filters = {
		    dotfiles = false,
		  },
		})
		vim.keymap.set('n', '<leader>t', api.tree.toggle, {})
	end
}
