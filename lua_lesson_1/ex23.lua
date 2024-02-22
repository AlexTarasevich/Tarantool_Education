--local a = 49732
local a = 89567

local x1 = a % 10000
local z1 = (a - x1) / 10000 -- первое число

local x2 = x1 % 1000
local z2 = (x1 - x2) / 1000 -- второе число

local x3 = x1 % 100
local z3 = (x2 - x3) / 100 -- третье число

local x4 = x1 % 10
local z4 = (x3 - x4) / 10 -- четвертое число 

local z5 = a % 10 -- пятое число 


print( (z1 + z3 + z5) - (z2 + z4))