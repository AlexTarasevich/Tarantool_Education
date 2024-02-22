local a = false

print(a or not a)

-- Всегда ИСТИНА

print(a or true )
print(not a)
print((a == a) and true)
print(a ~= a or true)
print(a or a == a )