-- Автобусный билет, у которого сумма цифр его шестизначного номера делится на 13, обозначим несчастливым. Могут ли два
-- идущих подряд билета оказаться несчастливыми?


local ticket1 = 100000
local ticket2 = ticket1 + 1

while ticket1 < 999999 do
    local sum1 = 0
    local n = ticket1
    while n > 0 do
        local digit = n % 10
        sum1 = sum1 + digit
        n = math.floor(n / 10)
    end
    local sum2 = 0
    n = ticket2
    while n > 0 do
        local digit = n % 10
        sum2 = sum2 + digit
        n = math.floor(n / 10)
    end
    if sum1 % 13 == 0 and sum2 % 13 == 0 then
        print("Найдены два счастливых билета : " .. ticket1 .. " и " .. ticket2)
        break
    end
    ticket1 = ticket1 + 1
    ticket2 = ticket2 + 1
end



