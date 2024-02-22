
print("Введите колличество этаэжей в доме:")
local flors = io.read("*l")

print("Введите колличество подъездов в доме :")
local entranse = io.read("*l")

print("Введите номер квартиры в доме :")
local flat = io.read("*l")

print("Введите колличество квартир на этаже :")
local flatForFlors = io.read("*l")


local allFlar = flatForFlors * flors
local findEntrance = (flat - 1) / allFlar + 1
local findFlors = (flat - 1) % allFlar / entranse + 1

print("Искомая квартира находится в подъезде",findEntrance)
print("Искомая квартира находится на этаже",findFlors)