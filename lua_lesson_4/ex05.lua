-- Программа запрашивает число N. Найти произведение всех чисел от 1 до N.

local pros = 1

print("Введите первое число")
local n = assert(tonumber(io.read('*l')), 'Need number!')

for i = 1, n do
    pros = pros * i
end
print(pros)
