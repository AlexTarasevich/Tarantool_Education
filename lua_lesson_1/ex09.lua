local a = assert(tonumber(io.read("*l")))
local b = assert(tonumber(io.read("*l")))

print(a + b ~= a + b)
print(a + b < a)
print(a + b < b)

-- придумать еще варианты для 9 и 8 задания

print(a + b ~= b + a)
print(a * b > b * a)
print(a * b < b * a)