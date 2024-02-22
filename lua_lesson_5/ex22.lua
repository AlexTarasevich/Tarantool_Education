-- Есть поле 101 на 101 клетку. Центр поля - 0,0, дальше по четырём сторонам отсчитывается 50 клеток. Есть робот, позиция
-- которого на том поле задаётся двумя числами: x и y. Робот может делать следующие шаги:

-- север (north),
-- северо-восток (north-east),
-- северо-запад (north-west),
-- юг (south), юго-восток (south-east),
-- юго-запад (south-west),
-- восток (east),
-- запад (west).

-- Программа запрашивает координаты робота, а также координаты, куда ему надо переместиться. Вывести на экран
-- последовательность шагов, которые должен сделать робот, чтобы достичь цели. После того, как робот достиг цели,
-- программа повторяет ввод координат цели.
-- Пример:
-- Enter robot's position:
-- 0
-- 0
-- Enter target:
-- 5
-- 5
-- Steps:
-- north-east
-- north-east
-- north-east
-- north-east
-- north-east
-- Enter target:
-- ...



-- Вопрос: Зачем в условии указывать, что от точек 0,0 еще отсчитываем 50 клеток?
-- Зачем нужны локальные и глобальные функции local function


print("Enter robot's position")
local r_x = assert(tonumber(io.read('*l')), 'Need number!')
local r_y = assert(tonumber(io.read('*l')), 'Need number!')


print("Enter target")
local t_x = assert(tonumber(io.read('*l')), 'Need number!')
local t_y = assert(tonumber(io.read('*l')), 'Need number!')


-- Если робот начинает с 0.0

if r_x == 0 and r_y == 0 then
    if t_x > 0 and t_y > 0 then
        local sum = t_x + t_y
        for i =1, sum do
        print("north-east")
        end

    end
end




-- Для оси Север Восток
if r_x > 0 and r_y > 0 and t_x > 0 and r_x > 0 then
    if r_x < t_x then
        local d = t_x - r_x
        for i = 1, d do
            print('east')
        end
    end

    if r_y > t_y then
        local d = r_y - t_y
        for i = 1, d do
            print('north')
        end
    end

    if r_x > t_x then
        local d = r_x - t_x
        for i = 1, d do
            print('east')
        end
    end

    if r_y < t_y then
        local d = t_y - r_y
        for i = 1, d do
            print('north')
        end
    end
end

-- Для оси Восток Юг
if r_x > 0 and t_x > 0 and r_y < 0 and t_y < 0 then
    if r_x < t_x then
        t_x = t_x - r_x
        for i = 1, t_x do
            print('east')
        end
    elseif r_x > t_x then
        r_x = r_x - t_x
        for i = 1, r_x do
            print('east')
        end
    end

    if r_y < t_y then
        t_y = t_y - r_y
        for i = 1, t_y do
            print('south')
        end
    elseif r_y > t_y then
        r_y = r_y - t_y
        for i = 1, r_y do
            print('south')
        end
    end
end



-- Для оси Запад Юг
if r_x < 0 and t_x < 0 and r_y < 0 and t_y < 0 then
    if r_x < t_x then
        t_x = t_x - r_x
        for i = 1, t_x do
            print('west')
        end
    elseif r_x > t_x then
        r_x = r_x - t_x
        for i = 1, r_x do
            print('west')
        end
    end

    if r_y < t_y then
        t_y = t_y - r_y
        for i = 1, t_y do
            print('south')
        end
    elseif r_y > t_y then
        r_y = r_y - t_y
        for i = 1, r_y do
            print('south')
        end
    end
end

-- Для оси Запад Север
if r_x < 0 and t_x < 0 and r_y > 0 and t_y > 0 then
    if r_x < t_x then
        t_x = t_x - r_x
        for i = 1, t_x do
            print('west')
        end
    elseif r_x > t_x then
        r_x = r_x - t_x
        for i = 1, r_x do
            print('west')
        end
    end

    if r_y < t_y then
        t_y = t_y - r_y
        for i = 1, t_y do
            print('north')
        end
    elseif r_y > t_y then
        r_y = r_y - t_y
        for i = 1, r_y do
            print('north')
        end
    end
end



if r_x == t_x then
    print('точки x совпадают')
end
if r_y == t_y then
    print('точки у совпадают')
end
