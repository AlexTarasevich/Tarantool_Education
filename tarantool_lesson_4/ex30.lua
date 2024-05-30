-- Реализовать следущую конфигурацию Tarantool:
-- порт = 3301
-- сетевой интерфейс, с которого принимать запросы: 0.0.0.0
-- рабочая директория: текущая директория
-- директория для журнала упреждающей записи (WAL): wal
-- директори для снимков состояния (snapshot): snap
-- объём рабочей памяти: 1 Gb
-- Создать спейс person (без полей), создать индекс с названием pk.

-- 1. Как просмотреть конфигурацию созданного спейса?
-- 2. Как просмотреть конфигурацию созданного индекса?
-- 3. На какое поле создаётся первичный индекс?
-- 4. Какого типа это поле?
-- 5. Какого типа первичный индекс?
-- 6. Какие записи можно вставить?

local console = require('console')  -- для входа в консоль tarantool 
box.cfg{
    listen = 3301,
    work_dir = '/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex30',
    wal_dir = '/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex30/wal',
    memtx_dir = '/Users/a.tarasevich/Lua code/GIT_add/Tarantool_Education/tarantool_lesson_4/tarantool.ex30/snap',
    memtx_memory = 1024 * 1024 * 1024
}

local pk = box.schema.space.create('pk')
box.space.pk:create_index('primary')


console.start()

-- ОТВЕТЫ:
-- 1 box.space.pk
-- 2 box.space.pk.index
-- 3 fieldno: 1
-- 4  nill
-- 5 unsigned
-- 6 pk:insert{1, 'John Doe'}