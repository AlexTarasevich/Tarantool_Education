--Задана локальная переменная local x = 73. Если попросить интерпретатор вычислить
--выражение x / 10, то мы получим 7.3. Но для целочисленного деления в старых версия lua и luajit
--нет специального оператора. Но есть оператор взятия остатка. Как можно реализовать операцию
--целочисленного деления, если еще дополнительно использовать операцию взятия остатка?

local x = 73

local d = x % 10
local y = (x - d)/ 10

print(y)
