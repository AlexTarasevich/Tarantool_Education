-- Вывести на экран числа от 1000 до 9999 такие, что среди цифр нет цифр 5 и цифры 6.



for i = 1000, 9999 do


    local x1 =i % 1000
    local z1 = (i - x1) / 1000
    
    local x2 = x1 % 100
    local z2 = (x1 - x2) / 100
    
    local x3 = x1 % 10
    local z3 = (x2 - x3) / 10

    local z4 = i % 10

   if z1 ~= 5 and z2 ~= 5 and z3 ~= 5 and z4 ~= 5 and z1 ~= 6 and z2 ~= 6 and z3 ~= 6 and z4 ~= 6 then
    print(i)
    
   end
end


