-- Упростить программу
-- local i = 0
-- local s = 1
-- local sum = 0
-- while true do
--     i = i + s
--     sum = sum + i
--     if i >= 100 then
--         break
--     end
-- end

-- Исправленная программа
local i, sum = 0, 0
while i < 100 do
    i = i + sum
    sum = sum + i
end
