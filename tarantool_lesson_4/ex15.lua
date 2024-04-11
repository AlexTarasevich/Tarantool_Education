-- Как узнать текущие значения конфигурации при уже запущенном Tarantool? Написать программу, которая конфигурирует
-- Tarantool, затем выводит на экран текущие значения конфигурации.

--Ввыести параметры listen, work_dir, memtx_dir, wal_dir.

box.cfg{ 
    listen = '3301',
    box.info.listen,
    work_dir = '/Users/a.tarasevich/Lua code/tarantool_lesson_4/ex15_work_dir/',
    memtx_dir = 'wal',
    wal_dir = 'wal',

}

box.info.memory()
