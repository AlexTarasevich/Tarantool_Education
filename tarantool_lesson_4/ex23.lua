-- Написать программу, которая конфигурирует Tarantool следующим образом:
-- порт = 3302
-- сетевой интерфейс, с которого принимать запросы: 0.0.0.0
-- рабочая директория: текущая директория
-- директория для журнала упреждающей записи (WAL): текущая директория
-- директори для снимков состояния (snapshot): текущиая директория
-- объём рабочей памяти: 512 Mb



box.cfg{
    listen = '0.0.0.0:3301',
    work_dir = '/Users/a.tarasevich/Lua code/tarantool_lesson_4/tarantool_ex23',
    wal_dir = '/Users/a.tarasevich/Lua code/tarantool_lesson_4/tarantool_ex23/wal',
    snap_dir = '/Users/a.tarasevich/Lua code/tarantool_lesson_4/tarantool_ex23/snap',
    memtx_memory = 536870912
}