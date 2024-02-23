-- Вычислить сумму всех нечётных чисел от 1 до 37.

local sum = 0

for i = 1, 37 do
    if i % 2 ~= 0 then
        sum = sum + i
    end
end
print(sum)



