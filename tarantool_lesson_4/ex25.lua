-- Есть конфигурация Tarantool:
-- {
-- work_dir = 'data',
-- wal_dir = 'wal',
-- memtx_dir = 'snap'
-- }
-- Какие директории нужно создать, чтобы Tarantool смог запуститься с данными опциями?



box.cfg{
    listen = '0.0.0.0:3301',
    work_dir = 'data',
    wal_dir = 'wal',
    memtx_dir = 'snap'
}

-- By default, snapshots and WAL files are stored in the same directory. However, you can set different values for the snapshot.dir and wal.dir options to store them on different phy
