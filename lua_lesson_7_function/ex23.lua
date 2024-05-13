-- Написать функцию, которая выполняет рекурсивным образом бинарный поиск числа в массиве.

function binary_search(arr, low, high, x)
    if low <= high then
        local mid = low + (high - low) / 2
        if arr[mid] == x then
            return mid
        elseif arr[mid] > x then
            return binary_search(arr, low, mid - 1, x)
        else
            return binary_search(arr, mid + 1, high, x)
        end
    else
        return -1
    end
end


local arr = {1, 3, 5, 7, 9}
local x = 5
local result = binary_search(arr, 1, #arr, x)

if result == -1 then
    print("Элемент не найден")
else
    print("Элемент найден под индексом " .. result)
end


-- 1. Сортируем массив данных.
-- 2. Делим его пополам и находим середину.
-- 3. Сравниваем срединный элемент с заданным искомым элементом.
-- 4. Если искомое число больше среднего — продолжаем поиск в правой части массива (если он отсортирован по возрастанию): 
-- делим ее пополам, повторяя пункт 3. Если же заданное число меньше — алгоритм продолжит поиск в левой части массива, снова возвращаясь к пункту 3.


