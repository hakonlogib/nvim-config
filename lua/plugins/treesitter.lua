return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    config = function()
        require'nvim-treesitter.configs'.setup {
          ensure_installed = {"python", "javascript","typescript","go", "c", "lua", "vim"},

          sync_install = false,
          auto_install = true,

          indent = {
              enable = true
          },
          highlight = {
            enable = true,

            additional_vim_regex_highlighting = false,
          },
        }

        local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
    end
}
