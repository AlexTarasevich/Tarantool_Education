-- Числа Фибонначчи вычисляются следующим образом: первое число - 0, второе число - 1. Следующее число является
-- суммой предыдущих двух. Таким образом, получаем последовательность 0, 1, 1, 2, 3, 5 и так далее. Программа запрашивает
-- число N и выводит на экран N-ое число Фибоначчи.




local n = assert(tonumber(io.read('*l')), 'Need number!')

local a = 0
local b = 1
local c = 0

for i = 1, n do
    c = a + b
    a = b
    b = c
    print(c)
end