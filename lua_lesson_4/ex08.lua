-- Программа запрашивает число N. Вывести на экран N сумм вида 1 + 2 + ... + i, где i меняется от 1 до N.

print("Введите число N:")
local N = tonumber(io.read())

for i = 1, N do
  local sum = 0
  for j = 1, i do
    sum = sum + j
  end
  print("сумма цифр от 1 до " .. i .. ": " .. sum)
end
