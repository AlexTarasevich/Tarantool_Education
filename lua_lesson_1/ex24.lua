local a = 47615

local x1 = a % 10000
local z1 = (a - x1) / 10000 -- первое число

local x2 = x1 % 1000
local z2 = 0 -- второе число

local x3 = x1 % 100
local z3 = (x2 - x3) / 100 -- третье число

local x4 = x1 % 10
local z4 =  0 -- четвертое число 

local z5 = a % 10 -- пятое число 


print((z1 * 10000) + (1000) + (z3 * 100) + (10) + z5)