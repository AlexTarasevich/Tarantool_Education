-- Программа запрашивает число X и целое положительное число Y. Возвести X в степень Y без использования операции
-- возведения в степень.

-- нужно умножить х на у столько раз, сколько у

print("Введите число X")
local x_number = tonumber(io.read())

print("Введите целое и положительное число Y")
local y_number = tonumber(io.read())

-- проверка числа y положительное оно или нет
if y_number < 0 then
    print("Неверное значение Y")
end

local result = 1
for i = 1, y_number do
  result = result * x_number
  print(result)
end
