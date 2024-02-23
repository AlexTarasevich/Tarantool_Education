-- Программа запрашивает число N, а после запрашивает числа до тех пор, пока не будет введён ноль. Найти сумму чисел,
--которые делятся без остатка на N.



print("Введите первое число")
local n = assert(tonumber(io.read('*l')), 'Need number!')
local sum = 0

repeat
    
    print("Введите число")
    local a = assert(tonumber(io.read('*l')), 'Need number!')
    
    
    if a % n == 0 then
        sum = sum + a
    end
until a == 0
print(sum)
