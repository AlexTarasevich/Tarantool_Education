-- Вычислить следущую сумму:
-- диапазон чисел от 1 до 100;
-- если число четное, то его прибавить к сумме;
-- если число нечетное, то если вычесть из суммы.

local sum = 0

for i = 1, 100 do
  if i % 2 == 0 then
    sum = sum + i
  else
    sum = sum - i
  end
end

print(sum)