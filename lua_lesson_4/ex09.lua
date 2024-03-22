-- Вывести на экран числа от 1000 до 9999 такие, что среди цифр нет цифр 5 и цифры 6.


for i = 1000, 9999 do 
    local has_five_or_six = false
    local j = i
    while j > 0 do
      local digit = j % 10
      if digit == 5 or digit == 6 then
        has_five_or_six = true
        break
      end
      j = j / 10
    end
  
    if not has_five_or_six then
      print(i)
    end
  end


