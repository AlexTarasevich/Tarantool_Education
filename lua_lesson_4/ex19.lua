-- Два числа называются дружественными, если каждое из них равно сумме всех делителей второго не считая самого этого
-- числа. Программа запрашивает начало и конец диапазона, найти все пары дружественных чисел в этом диапаоне.


print("Введите начало диапазона: ")
local start_start = io.read("*n")
print("Введите конец диапазона: ")
local star_end = io.read("*n")


for i = start_start, star_end do
    
    local sum_i = 1
    for j = 2, math.floor(i / 2) do
        if i % j == 0 then
            sum_i = sum_i + j
        end
    end


    for j = i + 1, star_end do
        
        local sum_j = 1
        for k = 2, math.floor(j / 2) do
            if j % k == 0 then
                sum_j = sum_j + k
            end
        end


        if sum_i == j and sum_j == i then
            print("Дружественные числа: " .. i .. " и " .. j)
        end
    end
end
