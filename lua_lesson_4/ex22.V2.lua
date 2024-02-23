local sub_x, sub_y, sum


print("Enter robot's position")
local r_x = assert(tonumber(io.read('*l')), 'Need number!')
local r_y = assert(tonumber(io.read('*l')), 'Need number!')


print("Enter target")
local t_x = assert(tonumber(io.read('*l')), 'Need number!')
local t_y = assert(tonumber(io.read('*l')), 'Need number!')


-- В этой программе робот ходит только по диагонали
--Программа работает только если точка куданужно переместится и точка робота находядся в одной плоскости координат



-- Для оси Север Восток
-- Значение х и у должны быть положительными
if r_x > 0 and r_y > 0 and t_x > 0 and r_x > 0 then
    if r_x > t_x then
        sub_x = r_x - t_x
    elseif t_x > r_x then
        sub_x = t_x - r_x
    end

    if r_y > t_y then
        sub_y = r_y - t_y
    elseif t_y > r_y then
        sub_y = t_y - r_y
    end

    sum = sub_y + sub_x
    for i = 0, sum do
        print("north-east")
    end
end



-- Для оси Восток Юг
-- Значение х должны быть положительными, значения у должны быть отрицательные
if r_x > 0 and t_x > 0 and r_y < 0 and t_y < 0 then
    if r_x > t_x then
        sub_x = r_x - t_x
    elseif t_x > r_x then
        sub_x = t_x - r_x
    end

    if r_y > t_y then
        sub_y = r_y - t_y
    elseif t_y > r_y then
        sub_y = t_y - r_y
    end

    sum = sub_y + sub_x
    for i = 0, sum do
        print("south-east")
    end
end


-- Для оси Запад Юг
-- Значение х и у должны быть отрицательными
if r_x < 0 and t_x < 0 and r_y < 0 and t_y < 0 then
    if r_x > t_x then
        sub_x = r_x - t_x
    elseif t_x > r_x then
        sub_x = t_x - r_x
    end

    if r_y > t_y then
        sub_y = r_y - t_y
    elseif t_y > r_y then
        sub_y = t_y - r_y
    end

    sum = sub_y + sub_x
    for i = 0, sum do
        print("south-west")
    end
end



-- Для оси Запад Север
-- Значение х должны быть отрицательными, значения у должны быть положительными
if r_x < 0 and t_x < 0 and r_y > 0 and t_y > 0 then
    if r_x > t_x then
        sub_x = r_x - t_x
    elseif t_x > r_x then
        sub_x = t_x - r_x
    end

    if r_y > t_y then
        sub_y = r_y - t_y
    elseif t_y > r_y then
        sub_y = t_y - r_y
    end

    sum = sub_y + sub_x
    for i = 0, sum do
        print("north-west")
    end
end
