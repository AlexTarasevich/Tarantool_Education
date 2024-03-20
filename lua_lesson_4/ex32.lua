-- Программа запрашивает число K. Определить, есть ли такое число N, при котором 1 + 2 + 3 ... + N = K, и если такое число
--есть, то вывести его на экран.

local n, sum = 1, 6

print("Введите число K")
local k = assert(tonumber(io.read('*l')), 'Need number!')

while sum < k do
    n = n + 1
    sum = sum + n
end

if sum == k then
    print("n = " .. n)
else
    print("не существует")
end

-- ПРОВЕРКА
-- K - 10 n - 4
-- К - 28 n - 7
