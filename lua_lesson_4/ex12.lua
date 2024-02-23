-- Вывести на экран количество четырёхзначных чисел, которые в 600 раз больше суммы своих цифр.


for i = 1000, 9999 do

    local x1 =i % 1000
    local z1 = (i - x1) / 1000

    local x2 = x1 % 100
    local z2 = (x1 - x2) / 100

    local x3 = x1 % 10
    local z3 = (x2 - x3) / 10

    local z4 = i % 10

    local sum = z1 + z2 + z3 + z4

    if sum * 600  == i then
       print(i)
    end
end

