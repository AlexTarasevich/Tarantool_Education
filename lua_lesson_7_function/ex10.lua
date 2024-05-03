-- Написать функцию для вычисления факториала числа N итеративным способом.


function factorial(n)
    local fact = 1
    for i = 1, n do
        fact = fact * i
    end
    return fact
end

print(factorial(125))
print(factorial(5))
print(factorial(15))