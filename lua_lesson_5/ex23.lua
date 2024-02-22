-- Вывести на экран таблицу умножения.


print('Таблица умножения')
for i = 1, 9 do
    for k = 2, 9 do
        io.write(i, "*", k, "=", i * k, "\t")
    end
    print('')
end

