-- Найти сумму чисиле 1/2 + 2/3 ... 100/101


-- 1/2  2/3  3/4 ....
-- x/(x+1) - формула, по которой происходит увеличение

local sum = 0

for i = 1, 100 do
    sum =i /(i +1) + sum
end
print(sum)
    

