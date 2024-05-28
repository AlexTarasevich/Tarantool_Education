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
print("listen: ")
print(box.cfg.listen)
print("\n")

print("work_dir: ")
print(box.cfg.work_dir)
print("\n")

print("memtx_dir: ")
print(box.cfg.memtx_dir)
print("\n")

print("wal_dir: ")
print(box.cfg.wal_dir)
print("\n")
