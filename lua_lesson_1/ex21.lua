local a = 378

local b = a % 100
local c = (a - b) / 100

local d = b % 10
local f = (b - d) / 10

local g = a % 10

print((g * 100) + (f * 10) + c)



