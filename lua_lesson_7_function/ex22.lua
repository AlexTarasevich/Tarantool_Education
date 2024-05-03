-- Написать функцию, которая выполняет сортировку массива методом пузырька.

-- прочитать про метод Пузырька

local numbers = {64, 34, 25, 12, 22, 11, 90}

function bubble_sort(numbers)
    local n = #numbers
    for i = 1, n do
        for j = 1, n - i do
            if numbers[j] > numbers[j + 1] then
                numbers[j], numbers[j + 1] = numbers[j + 1], numbers[j]
            end
        end
    end
    return numbers
end

local sorted_numbers = bubble_sort(numbers)
for i = 1, #sorted_numbers do
  io.write(sorted_numbers[i] .. " ")
end
io.write("\n")
