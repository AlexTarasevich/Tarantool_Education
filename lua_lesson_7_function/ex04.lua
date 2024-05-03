-- Написать функцию, которая в качестве аргумента принимает произвольное целое положительное число и считает сумму его цифр. 
-- Подсчёт суммы цифр реализовать итеративным способом.

--local n =  assert(tonumber(io.read('*l')), 'Need number!')

function sum_of (n)
    local sum = 0
    while n > 0 do
        local digit = n % 10
        sum = sum + digit
        n = (n - digit) / 10
    end
    print("Значение функции: " .. sum)
end

print(sum_of(1234))