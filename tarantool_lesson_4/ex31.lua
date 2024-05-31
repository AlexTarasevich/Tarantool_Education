-- Есть Tarantool, в котором создан спейс person без полей, с индексом pk. Проверить работу следующих операций и предложить своё объяснение результата:

-- box.space.person.insert({-1, 'John', 'Doe'})
-- box.space.person:insert({-1, 'Ivan', 'Ivanoff'})
-- box.space.person:insert(100, 'Egor', 'Egoroff')
-- box.space.person:insert({100}, 'Egor', 'Egoroff')
-- box.space.person:insert({100, "Foo", "Fighters", {1,2,3}, {a = 1, b = 2}})
-- box.space.person.insert(box.space.person, {100, "Foo", "Fighters", {1,2,3}, {a = 1, b = 2}})
-- box.space.person.insert(box.space.person, {200, "Sukhoy Superjet", "Flight 1", {"Moscow","Saint-Petersburg"}, {hours = 1}})
-- box.space.person:insert({4})
-- box.space.person:insert({})
-- box.space.person:insert()




-- ОТВЕТЫ: 
-- 1 error: 'builtin/box/schema.lua:1884: Use space:insert(...) instead of space.insert(...)'
-- 1.1 Добавить двоеточие где insert

-- 2 Tuple field 1 type does not match one required by operation: expected unsigned, got integer'
-- 2.1 Вставляемый кортеж имеет 3 поля, но space pk был создан без каких-либо полей. Нужно добавить поля и проблема уйдет

-- 3 error: Tuple/Key must be MsgPack array
-- 3.1 Кортеж вставляется как отдельные аргументы, но в space ожидается один аргумент

-- 4 Ввести данные получилось. box.space.person:get{100}

-- 5 Duplicate key exists in unique index "pk
-- 5.1 Поменять ключ 100 на другое число, например 101. Чтобы посмотреть его box.space.person:get{101}

-- 6 Duplicate key exists in unique index "pk" in space "person" with old tuple
-- 6.1 Поменять ключ 100 на другое число, например 102. Чтобы посмотреть его box.space.person:get{102}

-- 7 Ввести данные получилось без ошибок. Чтобы посмотреть его box.space.person:get{200}

-- 8 Ввести данные получилось. Чтобы посмотреть его box.space.person:get{4}

-- 9 Tuple field 1 required by space format is missing
-- 9.1 Нужно добавлять какие-то значение, а не пустой тапл. Например box.space.person:insert({12}) Чтобы посмотреть его box.space.person:get{12}

-- 10 error: Tuple/Key must be MsgPack array
-- 10.1 Пропущены фигурные скопки, которые обозначают тапл. Нужно использовать box.space.person:insert({35}) Чтобы посмотреть его box.space.person:get{35}


local console = require('console')
local fio = require('fio')



local function create_dir() -- создание папок для файлов .snap и .wal
    local mem = fio.mkdir("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex31/snap")
    local wal = fio.mkdir("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex31/wal")
end

create_dir()

local function rm_dir() -- удаление папок и  файлов .snap и .wal
    local rm_mem = fio.rmtree("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex31/snap")
    local rm_wal = fio.rmtree("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex31/wal")
end

local ctl = box.ctl.on_shutdown(rm_dir) -- триггер выключения

box.cfg{
    listen = 3301,
    work_dir = '/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex31',
    wal_dir = '/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex31/wal',
    memtx_dir = '/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex31/snap',
    memtx_memory = 1024 * 1024 * 1024
}

local person = box.schema.space.create('person')
box.space.person:create_index('pk', { type = 'TREE', parts = {{1, 'unsigned'}}})


console.start()
