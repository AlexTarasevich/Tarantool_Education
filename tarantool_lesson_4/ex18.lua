-- Есть запущенный Tarantool. 

--Какие настройки можно менять в рабочем режиме?
--Можно ли уменьшать и увеличивать значения?
--До каких пределов?
--Какие настройки нельзя менять в рабочем режиме?
--Написать программу, иллюстрирующую поведение.


-- В рабочем режиме можно менять состояние только на чтение или только box.cfg{read_only=true/false}
-- checkpoint_interval; box.cfg{ replication  = {'uri1'}; box.schema.space.create(' '); порт который слушают или ip

-- Нельзя менять wal и work директории


box.cfg{ 
    listen = '3301',
    box.info.listen,
    work_dir = '/Users/a.tarasevich/Lua code/tarantool_lesson_4/tarantool.ex18',
    snap_dir = '/Users/a.tarasevich/Lua code/tarantool_lesson_4/tarantool.ex18/snap',
    wal_dir = '/Users/a.tarasevich/Lua code/tarantool_lesson_4/tarantool.ex18/wal',
}

local space = box.schema.space.create('test_space')

space:format({
    {name = 'id', type = 'integer'},
    {name = 'name', type = 'string'},
    {name = 'value', type = 'number'},
})

space:create_index('primary', {
    parts = {'id'},
    if_not_exists = true,
})

space:insert({1, 'test1', 42})
space:insert({2, 'test2', 3455})

local data = space:select()

for i = 1, #data do
    local tuple = data[i]
    print(tuple[1], tuple[2], tuple[3])
end

