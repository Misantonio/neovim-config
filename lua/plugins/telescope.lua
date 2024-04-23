return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require("telescope.builtin")
        local telescope = require("telescope")
        telescope.setup({
            defaults = {
                file_ignore_patterns = {
                    "node_modules",
                    ".git",
                    ".cache",
                    ".vscode",
                    ".idea",
                    ".DS_Store",
                    ".ipynb_checkpoints",
                    ".pytest_cache",
                    ".mypy_cache",
                    ".tox",
                    ".venv",
                }
            },
            pickers={
                find_files = {
                    hidden = true
                },
                live_grep = {
                    hidden = true
                }
            }
        })
        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    end
}
