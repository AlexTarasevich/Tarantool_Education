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
        return i
    end
    return min
end

-- переделать Выразить как в случае с суммой