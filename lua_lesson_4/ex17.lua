-- Программа запрашивает коэффциенты a, b, c для выражения ax^2 + bx + c , а также начало и конец диапазона
-- значений x. Найти максимум и минимум значений данного выражения с заданными коэффициентами на заданном
--- диапазоне. Значение x менять с шагом 0.0001.

print("Введите значение а")
local a = assert(tonumber(io.read('*l')), 'Need number!')

print("Введите значение b")
local b = assert(tonumber(io.read('*l')), 'Need number!')

print("Введите значение c")
local c = assert(tonumber(io.read('*l')), 'Need number!')

print("Введите начало диапозона х")
local range_start = assert(tonumber(io.read('*l')), 'Need number!')

print("Введите конец диапозона х")
local range_end = assert(tonumber(io.read('*l')), 'Need number!')



local minValue = math.huge
local maxValue = -math.huge

-- math.huge - Вещественное значение, которое больше любого другого числового значения.


for x = range_start, range_end, 0.0001 do
    local y = a * (x ^ 2) + b * x + c
    if y < minValue then
        minValue = y
    end
    if y > maxValue then
        maxValue = y
    end
end

print("Значение максимум: " .. minValue)
print("Значение минимум: " .. maxValue)
