-- Предложить вариант, как можно вынести конфигурационные данные, которые передаются в box.cfg, в отдельный lua- модуль


local config = {
    listen = 3301,
    work_dir = "/Users/a.tarasevich/Lua code/tarantool_lesson_4/tarantool_ex26",
    memtx_dir = "/Users/a.tarasevich/Lua code/tarantool_lesson_4/tarantool_ex26/memtx_dir",
    wal_dir = "/Users/a.tarasevich/Lua code/tarantool_lesson_4/tarantool_ex26/wal",
}

return config -- создание и "возврат" конфига

