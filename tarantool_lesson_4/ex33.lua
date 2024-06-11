-- Привести к единому виду все объявления полей спейса в следующей программе:

-- box.schema.space.create('person')
-- box.space.person:format({
--     'uuid',
--     {'description'},
--     {'key', 'number'},
--     {type = 'unsigned', 'rank'},
--     {name = 'name', type = 'string'},
--     {'value', '*', is_nullable = true}
-- })

-- Какого типа эти поля?
-- Какие у них наименования?


local console = require('console')
local fio = require('fio')



local function create_dir() -- создание папок для файлов .snap и .wal
    local mem = fio.mkdir("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex33/snap")
    local wal = fio.mkdir("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex33/wal")
end

create_dir()

local function rm_dir() -- удаление папок и  файлов .snap и .wal
    local rm_mem = fio.rmtree("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex33/snap")
    local rm_wal = fio.rmtree("/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex33/wal")
end

local ctl = box.ctl.on_shutdown(rm_dir) -- триггер выключения




box.cfg{
    listen = 3301,
    work_dir = '/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex33',
    wal_dir = '/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex33/wal',
    memtx_dir = '/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex33/snap',
    memtx_memory = 1024 * 1024 * 1024
}

box.schema.space.create('person')
box.space.person:format({
    'uuid',
    {'description'},
    {'key', 'number'},
    {type = 'unsigned', 'rank'},
    {name = 'name', type = 'string'},
    {'value', '*', is_nullable = true}
})