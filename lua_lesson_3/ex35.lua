-- Программа запрашивает число. Если оно от 4 до 10 включительно, то увеличить его в 2 раза, если же оно меньше
-- 0 или от 1 до 3 включительно, то уменьшить на 55.


print("Введите число")
local a = assert(tonumber(io.read('*l')), 'Need number!')


if a == 4 or a >= 5 and a <= 10 then
    print("Число увеличино в 2 раза:", a * 2)
elseif a < 0 or a <= 3 then
    print("Число уменьшина на 55:", a - 55)
end



-- Как это можно написать через диапазон 4..10