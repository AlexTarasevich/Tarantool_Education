-- Создать спейс person с двумя полями:
-- key, тип string
-- value, тип any
-- Создать индекс c именем pk на поле key.

-- Как еще можно обозначить тип any?
-- Какие записи можно вставить? Вставить в спейс несколько разных записей.
-- Как можно прочитать эти записи?
-- Как прочитать все записи?
-- Как взять одну запись по ключу?






-- ОТВЕТЫ:
-- 1 
-- 2
-- 3
-- 4
-- 5





local console = require('console')
local fio = require('fio')



local function create_dir() -- создание папок для файлов .snap и .wal
    local mem = fio.mkdir("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex32/snap")
    local wal = fio.mkdir("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex32/wal")
end

create_dir()

local function rm_dir() -- удаление папок и  файлов .snap и .wal
    local rm_mem = fio.rmtree("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex32/snap")
    local rm_wal = fio.rmtree("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex32/wal")
end

local ctl = box.ctl.on_shutdown(rm_dir) -- триггер выключения

box.cfg{
    listen = 3301,
    work_dir = '/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex32',
    wal_dir = '/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex32/wal',
    memtx_dir = '/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex32/snap',
    memtx_memory = 1024 * 1024 * 1024
}



local human =  box.schema.space.create('human', { if_not_exists = true })
box.space.human:create_index('pk', {
    type = 'tree',
    parts = { 'key' },
    unique = true,
    if_not_exists = true
})
box.space.human:format({
    { name = 'key', type = 'string' },
    { name = 'value', type = 'any' }
})


console.start()