-- Вывести на экран количество четырёхзначных чисел, которые в 600 раз больше суммы своих цифр.


local x = 0
for i = 1000, 9999 do
    local sum = 0
    local num = i
    while num > 0 do
        local digit = num % 10
        sum = sum + digit
        num = math.floor(num / 10)
    end

    if i == sum * 600 then
        x = x + 1
    end
end


print("Колличество чисел: " .. x)
