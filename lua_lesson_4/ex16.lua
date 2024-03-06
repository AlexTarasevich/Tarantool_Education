-- Дано выражение x^2 + x + 1 . Вычислить его минимум на отрезке зачений x от -2 до 2. Значение x менять с шагом 0.0001.


local minValue = math.huge

for x = -2, 2, 0.0001 do
    local y = x * x + x + 1
    if y < minValue then
        minValue = y
    end
end

print("Минимальное значение: " .. minValue)


