-- Имеется функция min:


local function min(i, j)
    if i < j then
        return i
    end
    return j
end

-- Выразить функцию max через min.

local function max(i, j)
    if i < j then
        return j
    end
    return i
end