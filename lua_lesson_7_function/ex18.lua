-- Написать функцию, которая принимает в качестве аргумента массив и возвращает количество смены знаков в массиве.

-- первая смена знаков от 3 -1
-- второй от -1 до -5


local myArray = {0, 1, 2, 2, 4, -4, -5, 0, 1 }

function countChanges(arr)
    local changes = 0
    local prevChar = nil
    
    for i = 1, #arr do
        if prevChar ~= nil and arr[i] ~= prevChar then
            changes = changes + 1
        end
        prevChar = arr[i]
    end
    
    return changes
end


local numChanges = countChanges(myArray)
print("Колличество смены знаков : " .. numChanges) -- 7
