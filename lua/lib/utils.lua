local M = {}

function M.tableMerge(t1, t2)
    for k, v in pairs(t2) do
        if type(v) == "table" then
            if type(t1[k] or false) == "table" then
                M.tableMerge(t1[k] or {}, t2[k] or {})
            else
                t1[k] = v
            end
        else
            t1[k] = v
        end
    end
    return t1
end

-- adds description to a table
-- useful when settings keybindings
function M.desc(table, s)
    table.desc = s
    return table
end

return M
