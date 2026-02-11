local M = {}

M.open_pr_at_line = function()
    local file = vim.fn.expand('%:p')
    local line = vim.api.nvim_win_get_cursor(0)[1]

    local blame_cmd = string.format("git blame -L %d,%d --porcelain %s", line, line, file)
    local blame_output = vim.fn.system(blame_cmd)
    local commit_hash = vim.split(blame_output, " ")[1]

    if not commit_hash or commit_hash:match("^0+$") then
        print("No commit found for this line.")
        return
    end

    local search_cmd = string.format(
        'gh pr list --search "%s" --state all --json number,url', 
        commit_hash
    )
    local search_output = vim.fn.system(search_cmd)

    local ok, pr_list = pcall(vim.json.decode, search_output)
    
    if not ok or #pr_list == 0 then
        print("No PR found for commit " .. commit_hash:sub(1, 7))
        return
    end

    local pr_url = pr_list[1].url
    print("Opening PR #" .. pr_list[1].number .. "...")
    
    vim.ui.open(pr_url)
end

return M
