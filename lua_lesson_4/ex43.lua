-- Что выведет программа, объяснить почему

local start = 1
local finish = 10
local step = 1

for i = start, finish, step do
print(i)
step = step + 1
end



-- Переменная start инициализируется значением 1, переменная finish инициализируется значением 10, а переменная step инициализируется значением 1. 
-- Эти переменные определяют диапазон значений, с использовнием которых будет проходить цикл.
-- Цикл for используется для перебора диапазона значений от start до finish, с размером шага в step. 
-- Переменная цикла i принимает значения из этого диапазона на каждой итерации.
-- Внутри цикла функция print() используется для вывода значения i.
-- После печати значения i значение step увеличивается на 1. Это означает, что размер шага цикла будет увеличиваться на 1 на каждой итерации.
-- Цикл продолжается до тех пор, пока значение i не превысит значение finish. На этом этапе цикл завершается и программа завершается.
