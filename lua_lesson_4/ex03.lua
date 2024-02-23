-- Какой вид цикла болььше подойдёт для переделки следующей программы?
-- Написать программу с применением этого цикла.

-- local i = 0
-- ::loop::
-- print(i)
-- if i > 0 then
--     i = i - 1
--     goto loop
-- else
--     goto finish
-- end
-- ::finish::



-- Подойдет цикл repeat until, но можно испоьзовать и другие

local i = 0
repeat
    print(i)
    i = i - 1
    
until i < -1


local i = 0

while i > -2 do
    print(i)
    i = i - 1
end