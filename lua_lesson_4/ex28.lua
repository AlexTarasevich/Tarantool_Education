-- Программа запрашивает радиус круга R. Найти количество точек с целочисленными координатами, 
--которые попадают в этот круг. Центр круга - 0, 0.


-- Там скорее надо посчитать через двойной цикл
-- Перебираешь пошагово координаты, считаешь расстояние до центра



print("Введите радиус круга: ")

local r = assert(tonumber(io.read('*l')), 'Need number!') -- Reading a number from user input
local k = 0

if r > 0 then
    k = r * 4
    print('количество пельx точeк: ', k)
else
    print('Радиус должен быть положительным!')
end