-- Написать функцию, которая принимает три аргумента: массив и числа k и p. Массив заполнен строками. Функция удаляет k строк из массива, начиная c позиции p.

local arr = { "a", "b", "c", "d", "e", "f", "g", "h" }
local k = 3
local p = 2


function remove_rows(arr, k, p)
    local len = #arr
    for i = p, len - k do
        arr[i] = arr[i + k]
    end
    for i = len - k + 1, len do
        arr[i] = nil
    end
    return arr
end

for i = 1, #arr do
    print(arr[i])
end


