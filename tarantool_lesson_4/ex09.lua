-- Имеется файл one.lua c одной строкой: print(2, ...). 
--Запустим следующую команду: tarantool one.lua -e 'print(1)' . 
--Что выведется и в каком порядке? Почему?

-- В терминале будет 1 2
-- Потому что сначала выводится значение, которое записано перед опцией -е, а потом идет обращение к файлу one.lua