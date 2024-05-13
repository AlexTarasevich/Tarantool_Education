-- Написать функцию, которая принимает 4 числа: x1, y1, x2, y2 , 
-- где x1,y1 - координаты первой точки, x2, y2 -  координаты второй точки. Функция возвращает расстояние между точками.

local x1 = 0
local y1 = 0
local x2 = 3
local y2 = 4

function distance(x1, y1, x2, y2)
    local dx = x2 - x1
    local dy = y2 - y1
    return math.sqrt(dx * dx + dy * dy)
end



local result = distance(x1, y1, x2, y2)

print("Расстояние между точками " .. result)
