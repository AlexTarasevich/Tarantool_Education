-- Написать функцию для вычисления чисел Фибоначчи рекурсивным способом.

function fibonacci(n)
    if n == 0 then
        return 0
    elseif n == 1 then
        return 1
    else
        return fibonacci(n - 1) + fibonacci(n - 2)
    end
end

print(fibonacci(10))
