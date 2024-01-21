return {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
        require('telescope').setup{
            file_ignore_patterns = { "node%_modules/.*", "dist", "bin" }
        }
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
	end
}
