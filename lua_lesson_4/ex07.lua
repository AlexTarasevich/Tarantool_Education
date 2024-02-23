-- Вывести на экран числа от 1000 до 9999 такие, что цифры в этих числах должны быть различными





for i = 1000, 9999 do
    
    local x1 =i % 1000
    local z1 = (i - x1) / 1000
    
    local x2 = x1 % 100
    local z2 = (x1 - x2) / 100
    
    local x3 = x1 % 10
    local z3 = (x2 - x3) / 10

    local z4 = i % 10

    if z1 ~= z2 and 
       z1 ~= z3 and 
       z1 ~= z4 and 
       z2 ~= z3 and 
       z2 ~= z4 and 
       z3 ~= z4 
    then
        print(i)
    end
end


