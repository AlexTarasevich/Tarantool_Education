local a = 345

local b = a % 100
local c = (a - b) / 100

local d = b % 10
local f = (b - d) / 10 * 0

local g = a % 10


print((100 * c) + (f * 10) + g)
