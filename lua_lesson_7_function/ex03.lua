-- Проанализировать функцию из примера с ascii-прямоугольниками и сократить код, выделив еще одну функцию:

-- _ применяется для того чтобы обозначить переменную, которая не будет использоваться

local function ascii_rectangle(size)
    for i = 1, size do
        io.write('*')
    end
    io.write('\n')
    for _ = 1, size do
        for i = 1, size do
            if i == 1 or i == 8 then
                io.write('*')
            else
                io.write(' ')
            end
        end
        io.write('\n')
    end
    for i = 1, size do
        io.write('*')
    end
    io.write('\n')
end


print(ascii_rectangle(5))


