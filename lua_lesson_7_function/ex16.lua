-- Написать функцию, которая принимает в качестве аргумента число x и возвращает в качестве результата значения выражения x^2 * 5 - 3 * x + 5.
-- Найти минимум и максимум этой функции на отрезке от -10 до 10.

-- попробовать с шаго 0.01 по х

local function f(x)
    return x ^ 2 * 5 - 3 * x + 5
end



local min_x, max_x, min_y, max_y = -10, -10, math.huge, -math.huge
for x = -10, 10 do
    local y = f(x)
    if y < min_y then
        min_y = y
        min_x = x
    end
    if y > max_y then
        max_y = y
        max_x = x
    end
end

print("Minimum: f(", min_x, ") =", min_y)
print("Maximum: f(", max_x, ") =", max_y)
