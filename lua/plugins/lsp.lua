return 
{
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},         -- Required
        {'hrsh7th/cmp-nvim-lsp'},     -- Required
        {'hrsh7th/cmp-buffer'},       -- Optional
        {'hrsh7th/cmp-path'},         -- Optional
        {'saadparwaiz1/cmp_luasnip'}, -- Optional
        {'hrsh7th/cmp-nvim-lua'},     -- Optional

        -- Snippets
        {'L3MON4D3/LuaSnip'},             -- Required
        {'rafamadriz/friendly-snippets'}, -- Optional
    },
	config = function()
		local lsp = require('lsp-zero').preset({
		  name = 'minimal',
		  set_lsp_keymaps = true,
		  manage_nvim_cmp = true,
		  suggest_lsp_servers = false,
		})

		-- (Optional) Configure lua language server for neovim
		lsp.nvim_workspace()


		lsp.setup()

        --vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, {})
		vim.keymap.set('n', '<leader>e', function()
                BuffNr = vim.diagnostic.open_float()
                local userAnswer = vim.fn.input("Enter input here: ")
                print(userAnswer)
                if userAnswer == "y" then
                    vim.cmd('vsplit')
                    local win = vim.api.nvim_get_current_win()
                    vim.api.nvim_win_set_buf(win, BuffNr)
                end
        end)


		vim.keymap.set('n', '<C-a>', vim.lsp.buf.code_action, {})

	end

}
