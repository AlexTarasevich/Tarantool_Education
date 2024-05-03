-- С помощью функции вычисления факториала написать следующие функции для решения задач комбинаторики:
-- количество размещений из n объектов группами по k объектов;
-- количество сочетаний из n объектов по k объектов;



local function factorial(n)
    if n == 0 then return 1 end
    return n * factorial(n - 1)
end

  
local function permutations(n, k)
    return factorial(n) / factorial(n - k)
end
  

local function combinations(n, k)
    return factorial(n) / (factorial(k) * factorial(n - k))
end


print(factorial(12))
