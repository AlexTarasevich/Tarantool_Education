-- Автобусный билет, у которого сумма цифр его шестизначного номера делится на 13, обозначим несчастливым. Могут ли два
-- идущих подряд билета оказаться несчастливыми?


local not_lucky = false
local sum

for n = 100000, 999999 do
   local x1 = n % 100000
   local z1 = (n - x1) / 100000
   
   local x2 = x1 % 10000
   local z2 = (x1 - x2) / 10000
   
   local x3 = x1 % 1000
   local z3 = (x2 - x3) / 1000 

   local x4 = x1 % 100
   local z4 = (x3 - x4) / 100

   local x5 = x1 % 10
   local z5 = (x4 - x5) / 10

   local z6 = n % 10

   sum = z1 + z2 + z3 + z4 + z5 + z6

   if  sum % 13 == 0 then
      if not_lucky == true then
         print("Да")
      end
      not_lucky = true
   else
      not_lucky = false
   end
end



