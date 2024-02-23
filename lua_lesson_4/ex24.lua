-- Есть поле 11 на 11 клеток. Центр поля - 0, 0, дальше по четрём сторонам отсчитывается по 5 клеток. Есть робот, который
-- стоит на позиции 0, 0. Вывести на экран все шаги робота, которые он должен сделать для обхода всего поля по спирали, по
-- часовой стрелке. Робот может делать шаги на север, восток, юг и запад. Первый шаг робот делает на север.


print("Game plate 11x11")
print("Robot position 0x0")
print("__________")

local max_x = 11
local max_y = 11

local r_x = 0
local r_y = 0

local north = 0
local east = 0
local south = 0
local west = 0

repeat

    north = north + 1
    east = east + 1
    south = south + 1
    west = west + 1

    print("Сдвинуться на Север, позиция " .. north)
    print("Сдвинуться на Восток, позиция " .. east)
    print("Cдвинуться на ЮГ, позиция " .. south)
    print("Cдвинуться на Запад, позиция " .. west)
    r_x = r_x + 1
    r_y = r_y + 1
until r_x == max_x and r_y == max_y
