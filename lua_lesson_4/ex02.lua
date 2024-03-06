-- Переписать программу с использования goto на использование цикла

-- local i = 0
-- ::loop::
-- if i > 100 then
-- goto finish
-- end
-- print(i)
-- i = i + 1
-- goto loop
-- ::finish::


--Реализовать следующие варианты:
--с циклом while
--c циклом repeat ... until
--c циклом for





-- REPEAT ... UNTILE LOOP
local i = 0
repeat
    print(i)
    i = i + 1
until i > 100

--WHILE LOOP
local i = 0
while i <= 100 do
    print(i)
    i = i + 1
end


-- FOOR LOOP
for i = 0, 100 do
    print(i)
end


