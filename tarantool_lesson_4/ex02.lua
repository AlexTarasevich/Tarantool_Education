-- Написать программу, которая выводит в консоль следующее:
--версия Tarantool (два варианта)
--флаги компиляции Tarantool
--тип связывания (linking) - динамический или статический
--наименование компилятора
--целевая операционная система

--[[
    не использовать конфигурацию tarantool

--]]

local tarantool = require('tarantool')
local build = tarantool["build"]





print(build["flags"])
print(tarantool["version"])
print(build["linking"])
print(build["compiler"])


-- В переменной tarantool хранится таблица 
-- Чтобы обратиться к строке в таблице нужно указывать ее в " ". 
-- В одной таблице может быть несколько таблиц к которым также можно обращаться, но сначала нужнос оздать переменную.