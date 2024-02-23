-- Программа запрашивает радиус круга R и его координаты (x, y). Найти количество точек с целочисленными координатами,
-- которые попадают в этот круг.

print("Введите радиус круга")
local r = assert(tonumber(io.read('*l')), 'Need number!')

print("Введите координату х")
local x = assert(tonumber(io.read('*l')), 'Need number!')

print("Введите координату у")
local y = assert(tonumber(io.read('*l')), 'Need number!')


local points = (x ^ 2 + y ^ 2) *(x ^ 2 + y ^ 2)

if points <= r then
    print("Точка принадлежит кругу")
else
    print("Точка НЕ принадлежит кругу")
end

-- пересмотреть 