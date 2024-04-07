-- Задача из примера по теме функции

local array_1 = {1, 0, -1, 5, 6, -9, 10, 14, 17, -24, 3, 7}
local array_2 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
local array_3 = {-1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12}



local function min(x, y)
    if x < y then
        return x
    end
    return y
end
 
local function max(x, y)
    if x > y then
        return x
    end
    return y
end


local min_1 = array_1[1]
local max_1 = array_1[1]
local min_2 = array_2[1]
local max_2 = array_2[1]
local min_3 = array_3[1]
local max_3 = array_3[1]
 
for i = 1, 12 do
    min_1 = min(min_1, array_1[i])
    max_1 = max(max_1, array_1[i])
    min_2 = min(min_2, array_2[i])
    max_2 = max(max_2, array_2[i])
    min_3 = min(min_3, array_3[i])
    max_3 = max(max_3, array_3[i])
end

print(min_1)
print(max_1)

print(min_2)
print(max_2)

print(min_3)
print(max_3)