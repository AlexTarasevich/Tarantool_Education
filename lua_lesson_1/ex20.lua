local a = 376

local v = a  % 100
local d = (a - v) / 100

local f = v % 10
local c = (v - f) / 10

local g = a % 10

print(d * c * g)


