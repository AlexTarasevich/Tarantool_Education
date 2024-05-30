-- Написать программу, которая конфигурирует Tarantool и создаёт space с названием person (без индексов, и без полей).
--     Как просмотреть конфигурацию созданного спейса в консоли Tarantool?
--     Какой движок хранения задаётся по умолчанию?

local console = require('console')
local fio = require('fio')



local function create_dir() -- создание папок для файлов .snap и .wal
    local mem = fio.mkdir("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex29/snap")
    local wal = fio.mkdir("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex29/wal")
end

create_dir()

local function rm_dir() -- удаление папок и  файлов .snap и .wal
    local rm_mem = fio.rmtree("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex29/snap")
    local rm_wal = fio.rmtree("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex29/wal")
end

local ctl = box.ctl.on_shutdown(rm_dir) -- триггер выключения




box.cfg{
    listen = 3301,
    work_dir = "/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex29",
    wal_dir = "/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex29/wal",
    memtx_dir = "/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex29/snap"
}

box.schema.space.create('person')
console.start()



-- ОТВЕТЫ:
-- box.space.person
-- Движок хранения задаётся - memtx
