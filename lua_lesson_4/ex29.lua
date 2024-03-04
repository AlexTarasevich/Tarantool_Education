-- Программа запрашивает радиус круга R и его координаты (x, y). Найти количество точек с целочисленными координатами,
-- которые попадают в этот круг.

local k = 0
print("Введите радиус круга")
local r = assert(tonumber(io.read('*l')), 'Need number!')

print("Введите координату х")
local x = assert(tonumber(io.read('*l')), 'Need number!')

print("Введите координату у")
local y = assert(tonumber(io.read('*l')), 'Need number!')



k = 0
for x = -r, r do
    for y = -r, r do
        if x^2 + y^2 <= r^2 then
            k = k + 1
        end
    end
end
io.write('число точек в круге: ', k)
