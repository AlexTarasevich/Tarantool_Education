-- Написать функцию, которая принимает в качестве аргумента массив значений (могут быть числа или строки) и выводи его в консоль.

local arr = {1, "hello", 3.14, "world"}

function print_array(arr)
    for i = 1, #arr do
        if type(arr[i]) == "number" then
            io.write(arr[i] .. "\t")
        elseif type(arr[i]) == "string" then
            io.write(arr[i] .. "\t")
        end
    end
    io.write("\n")
end


print_array(arr)
