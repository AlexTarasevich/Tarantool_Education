print("Enter robot's position")
local r_x = assert(tonumber(io.read('*l')), 'Need number!')
local r_y = assert(tonumber(io.read('*l')), 'Need number!')


print("Enter target")
local t_x = assert(tonumber(io.read('*l')), 'Need number!')
local t_y = assert(tonumber(io.read('*l')), 'Need number!')


-- РОБОТ x - 5 y - 4
-- Нужная точка  x - 3 y - 2



-- север (north),
-- северо-восток (north-east),
-- северо-запад (north-west),
-- юг (south), юго-восток (south-east),
-- юго-запад (south-west),
-- восток (east),
-- запад (west).

--ГОРИЗОНТАЛЬ
--Если стартуем из точки 0.0 то по 1 прибавляем к x y пока точки робота и искомой не сойдутся 

-- ДОДЕЛАТЬ

-- Для оси Север Восток
if r_x > 0 and r_y > 0 and t_x > 0 and r_x > 0 then
    if r_x < t_x then
        repeat
            r_x = r_x + 1
        until r_x == t_x
        for i = 1, r_x do
            print('east')
        end
    elseif r_x > t_x then
        r_x = r_x - t_x
        for i = 1, r_x do
            print('east')
        end
    end

    if r_y < t_y then
        repeat
            r_y = r_y + 1
        until r_y == t_y
        for i = 1, r_y do
            print('north')
        end
    elseif r_y > t_y then
        r_y = r_y - t_y
        for i = 1, r_y do
            print('north')
        end
    end
end



--Для оси Восток Юг
if r_x > 0 and t_x > 0 and r_y < 0 and t_y < 0 then
    
    if r_x < t_x then
        repeat
            r_x = r_x + 1
            print('east')
        until r_x == t_x
        
    elseif r_x > t_x then
        repeat
            r_x = r_x - 1
            
            print('east')
        until r_x == t_x

    
    end

    if r_y < t_y then
        repeat
            r_y = r_y - 1
            print('west')
        until r_y == t_y
       
    elseif r_y > t_y then
        repeat
            print('west')
            r_y = r_y - 1
        until r_y == t_y
        
    end
end


-- Для оси Запад Юг
if r_x < 0 and t_x < 0 and r_y < 0 and t_y < 0 then
    
    if r_x < t_x then
        repeat
            r_x = r_x + 1
            print('west')
        until r_x == t_x
        
    elseif r_x > t_x then
        repeat
            r_x = r_x - 1
            
            print('west')
        until r_x == t_x
    end

    if r_y < t_y then
        repeat
            r_y = r_y - 1
            print('south')
        until r_y == t_y
       
    elseif r_y > t_y then
        repeat
            print('south')
            r_y = r_y - 1
        until r_y == t_y
        
    end
end



-- Для оси Запад Север
if r_x < 0 and t_x < 0 and r_y > 0 and t_y > 0 then
    
    if r_x < t_x then
        repeat
            r_x = r_x + 1
            print('west')
        until r_x == t_x
        
    elseif r_x > t_x then
        repeat
            r_x = r_x - 1
            
            print('west')
        until r_x == t_x
    end

    if r_y < t_y then
        repeat
            r_y = r_y + 1
            print('north')
        until r_y == t_y
       
    elseif r_y > t_y then
        repeat
            print('north')
            r_y = r_y - 1
        until r_y == t_y
        
    end
end