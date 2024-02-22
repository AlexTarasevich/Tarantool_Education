print("Введите координаты точки A:")
local x1 = io.read("*l")
local x2 = io.read("*l")

print("Введите координаты точки B :")
local y1 = io.read("*l")
local y2 = io.read("*l")

local res = ((y2 - y1)^2) + ((x2 - x1)^2)
print(res ^ 0.5)