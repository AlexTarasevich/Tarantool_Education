-- Программа запрашивает любые числа до тех пор, пока сумма этих чисел не превысит 100. Вывести на экран максимальное
-- и максимальное из введёных чисел, количество введенных чисел и их сумму.


local max_num = nil
local min_num = nil
local count = 0
local sum = 0

while sum < 100 do
  print("Введите число:")
  local num = assert(tonumber(io.read('*l')), 'Need number!')


  if max_num == nil or num > max_num then
    max_num = num
  end
  if min_num == nil or num < min_num then
    min_num = num
  end


  count = count + 1
  sum = sum + num
end


print("Максимальное число: " .. max_num)
print("Минимальное число: " .. min_num)
print("Колличество введенных чисел: " .. count)
print("Сумма введенных чисел: " .. sum)
