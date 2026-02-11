vim.api.nvim_create_user_command('OpenPR', function()
    require("ghpr").open_pr_at_line()
end, {})

vim.keymap.set('n', '<leader>gp', ':OpenPR<CR>', { desc = "Git: Open PR for line" })
