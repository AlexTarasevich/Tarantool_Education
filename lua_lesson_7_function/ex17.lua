-- Написать функцию, которая принимает в качестве аргумента массив и возвращает сумму его элементов.

local arr = { 1, 2, 3, 4, 5 }
local arr2 = {23, 345, 31, 22}


function sum_array(list)
    local sum = 0
    for i = 1, #list do
        sum = sum + list[i]
    end
    return sum
end

print(sum_array(arr)) -- 15
print(sum_array(arr2)) -- 15


-- фактические и формальные аргументы
-- ЗАПИСАТь 