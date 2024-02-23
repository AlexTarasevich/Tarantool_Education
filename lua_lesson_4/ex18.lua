-- Программа запрашивает число N. Найти все числа, на которое число N делится без остатка и вывести их на экран.

print("Введите число N")
local n = assert(tonumber(io.read('*l')), 'Need number!')

for i = 0, 10000 do
    if i % n == 0 then
        print(i)
    end
end


-- Самое больлше значение integer 9.223.372.036.854.775.807
-- Самое минимальное значение integer - 9.223.372.036.854.775.808