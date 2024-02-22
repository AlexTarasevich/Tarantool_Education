local a = true

print(a and not a)

-- всегда ЛОЖЬ

print(a and false )
print(a and not true)
print(a ~= a and a == a or not true)
print(false and 1 ~=2 or false)