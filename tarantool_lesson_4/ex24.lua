-- Есть конфигурация Tarantool:
-- {
-- work_dir = 'data',
-- wal_dir = '/tmp/wal',
-- memtx_dir = '/tmp/snap'
-- }

-- Директория data создана там же, где запускается Tarantool, директории /tmp/wal и /tmp/snap созданы.
-- Где действительно будут располагаться снимки состояния и журналы?

-- Снимки состояния и журналы будут распологаться в папке data/tmp/snap