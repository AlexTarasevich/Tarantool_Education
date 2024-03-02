-- Программа запрашивает десятичное число N и основание системы счисления, 
-- в которую надо перевести число N.

print("Введите десятичное число N")
local n = assert(tonumber(io.read('*l')), 'Need number!')


print("Введите основание системы счисления")
local sis = assert(tonumber(io.read('*l')), 'Need number!')



if sis == 2 then -- из десятичной в двоичную
    local b = ''

    while n > 0 do
        b = tostring(n % 2) .. b
        n = math.floor(n / 2)
    end
    print("Двоичное число " .. b)


    elseif sis == 16 then -- из десятичноой в шестнадцатеричную

    local s = ''
    local h = '0123456789ABCDEF'

    while n > 0 do
        s = string.sub(h, n % 16 + 1, n % 16 + 1) .. s -- нашел в интернете способ реализации
        n = math.floor(n / 16)
    end
    print(s)

end

--string.sub(S, i, j); -- Возвращает подстроку строки S, которая начинается с символа с индексом i и заканчивается символом с индексом j
   -- j (необязательный параметр) - по-умолчанию, индекс последнего символа