-- Вывести на экран числа от 1000 до 9999 такие, что среди цифр нет цифр 5 и цифры 6.



for i = 1000, 9999 do
    local fiveOrSix = false

    local num = i
    while num > 0 do
        local digit = num % 10
        if digit == 5 or digit == 6 then
            fiveOrSix = true
            break
        end
        num = math.floor(num / 10)
    end

    if not fiveOrSix then
        print(i)
    end
end


