-- Программа запрашивает число N. Найти все числа, на которое число N делится без остатка и вывести их на экран.

print("Введите число N")
local n = assert(tonumber(io.read('*l')), 'Need number!')

for i = 1, n do
    if n % i == 0 then
        print(i)
    end
end

