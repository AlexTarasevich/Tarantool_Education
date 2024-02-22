local a = 546789

local x1 = a % 100000
local z1 = (a - x1) / 100000 -- первое число

local x2 = x1 % 10000
local z2 = (x1 - x2) / 10000   -- второе число

local x3 = x1 % 1000
local z3 = (x2 - x3) / 1000 -- третье число

local x4 = x1 % 100
local z4 = (x3 - x4) / 100 -- четвертое число 

local x5 = x1 % 10
local z5 = (x4 - x5) / 10


local z6 = a % 10 -- пятое число 


print((100000 * z6) + (10000 * z2) + (1000 * z3) + (100 * z4) + (10 * z5) + z1)