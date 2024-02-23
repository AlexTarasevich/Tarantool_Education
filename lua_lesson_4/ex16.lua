-- Дано выражение x^2 + x + 1 . Вычислить его минимум на отрезке зачений x от -2 до 2. Значение x менять с шагом 0.0001.



-- Сделать последовательный поиск
-- посмотреть задачу с  lucky и тот же принцип

local s
--local z1, z2, z3, z4, z5, z6, z7, z8, z9, z10, z11, z12, z13, z14

for x = -2, 2, 0.0001 do
    s = x^2 + x + 1
    local s1 = s * 10000000000000 -- преобразование в целое число

   local x1 = s1 % 10000000000000
   local z1 = (s1 - x1) / 10000000000000
   
   local x2 = x1 % 1000000000000
   local z2 = (x1 - x2) / 1000000000000
   
   local x3 = x1 % 100000000000
   local z3 = (x2 - x3) / 100000000000

   local x4 = x1 % 10000000000
   local z4 = (x3 - x4) / 10000000000

   local x5 = x1 % 1000000000
   local z5 = (x4 - x5) / 1000000000

   local x6 = x1 % 100000000
   local z6 = (x5 - x6) / 100000000

   local x7 = x1 % 10000000
   local z7 = (x6 - x7) / 10000000

   local x8 = x1 % 1000000
   local z8 = (x7 - x8) / 1000000

   local x9 = x1 % 100000
   local z9 = (x8 - x9) / 100000

   local x10 = x1 % 10000
   local z10 = (x9 - x10) / 10000

   local x11 = x1 % 1000
   local z11 = (x10 - x11) / 1000

   local x12 = x1 % 100
   local z12 = (x11 - x12) / 100

    local x13 = x1 % 10
    local z13 = (x12 - x13) / 10



   local sum = z1 + z2 + z3 + z4 + z5 + z6 + z7 + z8 + z9 + z10 + z11 + z12 + z13
   if sum > sum then
    print(sum)
   end

end



-- 6.999000039998
-- 6.999500009998
-- 6.999999999998 последнее число


-- for n = 100000, 999999 do
--    local x1 = n % 100000
--    local z1 = (n - x1) / 100000
   
--    local x2 = x1 % 10000
--    local z2 = (x1 - x2) / 10000
   
--    local x3 = x1 % 1000
--    local z3 = (x2 - x3) / 1000 

--    local x4 = x1 % 100
--    local z4 = (x3 - x4) / 100

--    local x5 = x1 % 10
--    local z5 = (x4 - x5) / 10

--    local z6 = n % 10

--    sum = z1 + z2 + z3 + z4 + z5 + z6

--    if  sum % 13 == 0 then
--       if not_lucky == true then
--          print("Да")
--       end
--       not_lucky = true
--    else
--       not_lucky = false
--    end
-- end
