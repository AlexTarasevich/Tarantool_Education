-- Написать функцию, которая в качестве аргумента принимает целое ненулевое положительное число N 
-- и подсчитывает сумму чисел от 1 до N итеративным способом.

local function sum_from(n)
    local sum = 0
    for i = 1, n do
        print(i)
        sum = sum + i
    end
    return sum
end


print(sum_from(5)) -- 15 (1 + 2 + 3 + 4 + 5)
print(sum_from(10)) -- 55 (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10)