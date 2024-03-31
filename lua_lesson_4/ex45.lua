-- К чему приведет выполнение следующей программы?
-- Как исправить эту программу, чтобы она посчитала сумму чисел от 10 до -10?


-- Ответ: выведется 0
-- local i = 10
-- local sum = 0
-- while true do
--     sum = sum + i
--     i = i - 1
-- end
-- print(sum)

local i = 10
local sum = 0

while i >= -10 do
  sum = sum + i
  i = i - 1
end

print(sum)
