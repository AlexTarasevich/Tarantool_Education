-- Есть поле 11 на 11 клеток. Центр поля - 0, 0, дальше по четрём сторонам отсчитывается по 5 клеток. Есть робот, который
-- стоит на позиции -5, 5. Вывести на экран все шаги робота, которые он должен сделать для обхода всего поля по спирали, по
-- часовой стрелке. Робот может делать шаги на север, восток, юг и запад. Первый шаг робот делает на восток.


-- посмотреть как и с одномерными координатами

print("Game plate 11x11")
print("Robot position 0x0")
print("__________")

local max_x = 11
local max_y = 11

local r_x = -5
local r_y = 5

local north = 5
local east = 0
local south = 0
local west = -5

repeat

    north = north + 1
    east = east + 1
    south = south + 1
    west = west + 1

    print("Cдвинуться на Север, позиция " .. north)
    print("Сдвинуться на Восток, позиция " .. west)
    print("Сдвинуться на Юг, позиция " .. south)
    print("Cдвинуться на Запад, позиция " .. west)
    r_x = r_x + 1
    r_y = r_y + 1
until  r_x == max_x and r_y == max_y
