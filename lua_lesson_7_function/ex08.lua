-- Написать функцию для вычисления чисел Фибоначчи итеративным способом.

function fibonacci(n)
    if n == 0 then
        return 0
    elseif n == 1 then
        return 1
    else
        local a, b = 0, 1
        for i = 2, n do
            a, b = b, a + b
        end
        return b
    end
end


print(fibonacci(10))
