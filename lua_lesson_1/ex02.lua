

print(type("дед"))
print("тебе")
print("Мокар")
print("Улыбок")


local a = "дед"
local b = "Мокар"
local c = "Улыбок"
local d = "тебе"


print(a .. b .. c .. d)

print(a)
print(b)
print(c)
print(d)

print(a ..'\n'.. b ..'\n' .. c ..'\n' .. d)

print("Дед " .. "Мокар")
print("Дед Мокар")


print(a .. " Мокар")
print(a .. " ".. b)

local z = a .. " ".. b
print(z)

print(z .. ", " .. c .." ".. d)

local y = z .. ", " .. c .." ".. d
print(y .. "!")

y = y .. "!"
print(y)