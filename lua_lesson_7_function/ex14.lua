-- Написать функцию, которая в качестве аргумента принимает целое ненулевое 
-- положительное число N и подсчитывает сумму числе от 1 до N рекурсивным способом.

local function sum_from(n)
    if n == 1 then
      return 1
    else
      return n + sum_from(n - 1)
      
    end
  end



print(sum_from(5)) -- 15 (1 + 2 + 3 + 4 + 5)
print(sum_from(10)) -- 55 (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10)