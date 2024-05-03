-- Написать функцию, которая принимает целое ненулевое положительное число и возвращает массив, 
-- который содержит в качестве элементов цифры в записи этого числа.


-- function fill_array(size)
--     local numbers = {}
    
--     for i = 1, size do
--         print("Введите число")
--         local num = assert(tonumber(io.read('*l')), 'Need number!')
--         numbers[i] = num
--     end
    
--     return numbers
-- end


-- local size = 5
-- local numbers = fill_array(size)

-- for i = 1, size do
--     print("Элемент " .. i .. " это " .. numbers[i])
-- end



-- Правильная функция 
-- создать второй массив и отсортировать его

function digits_array(n)
    local digits = {}
    local index = 1

    while n > 0 do
        local digit = n % 10
        digits[index] = digit
        index = index + 1
        n = (n - digit) / 10
    end

    return digits
end

local n = 23456
local digits = digits_array(n)


for i = 1, #digits do
    print("Элемент " .. i .. " это " .. digits[i])
end
