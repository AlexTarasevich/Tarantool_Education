--Есть lua-программа с следующим кодом:

--[[
box.cfg {
work_dir = 'A',
wal_dir = 'B',
memtx_dir = 'C'
}
--]]
--Имеется дерево папок: A, A/B, A/C. Объясните, какие файлы появляются после запуска в этих папках и каково их предназначение?

box.cfg {
    work_dir = 'A',
    wal_dir = 'B',
    memtx_dir = 'C'
    }

-- Изначально нужно создать все папки.
-- В папаке С будет файл .snap - это снимок всей памяти. Дисковая копия  всех данных в базе в какой-то момент
-- В папке В будут появляться файлы .хlog файлы в который запоминаются все изменениея с данными (вставка, обновление, удаление, замена)


