-- Два числа называются дружественными, если каждое из них равно сумме всех делителей второго не считая самого этого
-- числа. Программа запрашивает начало и конец диапазона, найти все пары дружественных чисел в этом диапаоне.

local f = 0

print("Введите наименьшее числи диапазона")
local x1 = assert(tonumber(io.read('*l')), 'Need number!')

print("Введите наибольшее числи диапазона")
local x2 = assert(tonumber(io.read('*l')), 'Need number!')


for ch = x1, x2 do
    if ch ~= f then
        local s1 = 0
    for i = 1, ch / 2 do
        if ch % i == 0 then
            s1 = s1 + i
        end
    end
    local s2 = 0
    for j = 1, s1 / 2 do
        if s1 % j == 0 then
            s2 = s2 + j
        end
    end
    if s2 == ch and ch ~= s1 then
        print(ch, s1)
        f = s1
        end
    end
end


