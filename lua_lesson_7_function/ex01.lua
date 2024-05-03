-- Имеется следующее объявление функции:
local function add2(x)
    return x + 2
end

-- не явно переписывается во второй вид описания функции
-- Переписать это объявление через объявление локальной переменной и присваивание ей ссылки на функцию.

local add2 = function (x)
    return x + 2
end


