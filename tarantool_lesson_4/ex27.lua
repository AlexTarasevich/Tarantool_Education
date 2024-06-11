-- Написать программу, которая конфигурирует Tarantool и создаёт space с названием person (без индексов, и без полей). 
-- Выполнится ли операция box.space.person:insert({'John'}) ? Почему?


box.cfg {
    listen = 3301,
    work_dir = "/Users/a.tarasevich/Lua code/tarantool_lesson_4/tarantool.ex27"
    -- memtx_engine_memory = 1024 * 1024 * 1024, -- 1GB
    -- wal_mode = "none", -- Disable WAL for simplicity
}

-- Create a space called 'person' without indexes and without fields
box.schema.space.create('person')
box.space.person:insert({'John'})

-- Ответ: нет, т.к нету индексов 
-- будет ошибка  No index #0 is defined in space 'person'


