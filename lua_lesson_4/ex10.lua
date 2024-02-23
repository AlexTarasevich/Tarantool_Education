-- Вывести все пятизначные числа, которые делятся на 2, у которых средняя цифра нечетная, и сумма всех цифр делится на 4.


for i = 10000, 99999 do

    local x1 =i % 10000
    local z1 = (i - x1) / 10000
    
    local x2 = x1 % 1000
    local z2 = (x1 - x2) / 1000
    
    local x3 = x1 % 100
    local z3 = (x2 - x3) / 100

    local x4 = x1 % 10
    local z4 = (x3 - x4) / 10

    local z5 = i % 10

    local sum_all = z1 + z2 + z3 + z4 + z5
  

    if i % 2 == 0 and z3 % 2 ~= 0 and sum_all % 4 == 0 then
        print(i)
    end
end


