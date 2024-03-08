-- Атобусный билет, у которого сумма первых трёх его номер равна сумме последних трёх цифр шестизначного номера,
-- обозначим счастливым. Вывести номера всех счастливых автобусных билетов.


local num_start = 100000
local num_end = 999999


for number = num_start, num_end do

    local first_three = math.floor(number / 1000)
    local last_three = number % 1000


    local sum_first = math.floor(first_three / 100) + math.floor(first_three / 10) % 10 + first_three % 10
    local sum_last = math.floor(last_three / 100) + math.floor(last_three / 10) % 10 + last_three % 10


    if sum_first == sum_last then
        print("Счастливые билеты : " .. number)
    end
end
