-- Как узнать текущие значения конфигурации при уже запущенном Tarantool? Написать программу, которая конфигурирует
-- Tarantool, затем выводит на экран текущие значения конфигурации.

--Ввыести параметры listen, work_dir, memtx_dir, wal_dir.

-- Configure Tarantool
box.cfg {
    listen = 3301,
    work_dir = "/Users/a.tarasevich/Lua code/tarantool_lesson_4/tarantool_ex15",
    memtx_dir = "/Users/a.tarasevich/Lua code/tarantool_lesson_4/tarantool_ex15/mem",
    wal_dir = "/Users/a.tarasevich/Lua code/tarantool_lesson_4/tarantool_ex15/wal",
}

-- Display current configuration values
io.write("listen: ")
io.write(box.cfg.listen)
io.write("\n")

io.write("work_dir: ")
io.write(box.cfg.work_dir)
io.write("\n")

io.write("memtx_dir: ")
io.write(box.cfg.memtx_dir)
io.write("\n")

io.write("wal_dir: ")
io.write(box.cfg.wal_dir)
io.write("\n")
