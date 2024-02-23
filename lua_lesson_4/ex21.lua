-- Атобусный билет, у которого сумма первых трёх его номер равна сумме последних трёх цифр шестизначного номера,
-- обозначим счастливым. Вывести номера всех счастливых автобусных билетов.


for n = 100000, 999999 do
    local x1 = n % 100000
    local z1 = (n - x1) / 100000
    
    local x2 = x1 % 10000
    local z2 = (x1 - x2) / 10000
    
    local x3 = x1 % 1000
    local z3 = (x2 - x3) / 1000
 
    local x4 = x1 % 100
    local z4 = (x3 - x4) / 100
 
    local x5 = x1 % 10
    local z5 = (x4 - x5) / 10
 
    local z6 = n % 10
 
    local sum_1 = z1 + z2 + z3
    local sum_2 = z4 + z5 + z6

    if sum_1 == sum_2 then
        print(n)
    end
end