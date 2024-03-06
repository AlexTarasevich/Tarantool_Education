-- Программа запрашивает числа a, b и n. Вывести на экран n-ое число последовательности, которая образовывается по тому
-- же принципу, что и числа Фибоначчи - первое число а, второе число b, каждое последующее число является суммой
-- предыдудщих двух.

local a = assert(tonumber(io.read("*number")), "invalid input") -- 10
local b = assert(tonumber(io.read("*number")), "invalid input") -- 15
local n = assert(tonumber(io.read("*number")), "invalid input") -- 5


local c = 0

for i = 1, n do
    c = a + b
    a = b
    b = c
end
print(c)


-- Подсказка на более простых числах
-- a  b  c  
-- 10 15 25 40 65 105 170

-- Число а = 10, b = 15. Получить 5-е число
-- num =  10 + 15 = 25
-- sum =  25 + 15 = 40
-- num =  40 + 25 = 65
-- sum = 65 + 40 = 105
-- num = 105 + 65 = 170

-- a = 1
-- b = 1
-- c = 0

-- a = 1
-- b = 1
-- c = 2

-- a = 1
-- b = 2
-- c = 0
