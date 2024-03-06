-- Вывести на экран трёхзначные числа, равные сумме кубов своих цифр.
-- Диапозон от 100 до 999


-- Число, которое получается, при сумме кубов своих цифр


-- i = 100 
-- x1 = 1
-- x2 = 0
-- x3 = 0

-- sum = x1^3 + x2^3 + x3^3
-- num = сравнить с i (sum == i)


for i = 100, 999 do
    local sum = 0

   
    local num = i
    while num > 0 do
        local rang = num % 10
        sum = sum + (rang ^ 3)
        num = math.floor(num / 10)
    end

    if i == sum then
        print(i)
    end
end


