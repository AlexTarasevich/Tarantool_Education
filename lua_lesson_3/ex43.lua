-- Программа последовательно запрашивает числа, пока не будет введён 0. Вывести на экран сумму этих чисел.

local sum = 0
::loop::
print("Введите первое число")
local n = assert(tonumber(io.read('*l')), 'Need number!')


if  n == 0 then
    print(sum)
    goto finish
else
    sum = sum + n
    goto loop
end
::finish::