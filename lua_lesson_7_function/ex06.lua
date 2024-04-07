-- Написать функцию, которая выполняет подсчёт суммы цифр числа рекурсивным способом.

-- Рекурсия — это функция, которая вызывает саму себя.
-- func А (x) => x * A(x-1)
-- «Для того чтобы понять рекурсию, надо сначала понять рекурсию»

function recurse (n)
	if n < 10 then
        return n
    else
        local digit = n % 10
        return digit + recurse((n - digit) / 10)
    end

end

print(recurse(1234))


-- В рекурсивной функции всегда есть два случая: рекурсивный и граничный случаи. 
-- Рекурсивный случай – когда функция вызывает саму себя, а граничный – когда функция перестает себя вызывать. 
-- Наличие граничного случая и предотвращает зацикливание.

-- как правильно выбирать граничное значаение? 


-- пример для понимания рекурсии
function factorial(n)
    if n == 1 then
        return 1
    else 
        return n * factorial(n -1)
    end
end

print(factorial(3))


-- пример для понимания итеративного процесса
function factorial_iter(n)
    local function iter(counter, acc)
        if counter == 1 then
            return acc
        end
        return iter(counter - 1, counter * acc)
    end
    return iter(n, 1)
end

print(factorial_iter(3))

-- итеративный лучше если нужно считать большое количество чисел, значений