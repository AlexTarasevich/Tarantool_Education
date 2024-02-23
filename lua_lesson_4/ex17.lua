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
local x1 = assert(tonumber(io.read('*l')), 'Need number!')

print("Введите конец диапозона х")
local x2 = assert(tonumber(io.read('*l')), 'Need number!')

local def = a * x^2 + b * x + c

-- Сделать последовательный поиск и посмотреть что минимум, а что максимум
