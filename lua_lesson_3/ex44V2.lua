-- Усложнённая версия калькулятора. То же самое, что и в 42, но с дополнительными действиями: после вывода
-- операции программа спрашивает, запомнить ли результат или продолжить без запоминания? Если ответ - y, то
-- результат запомнить, если нет - результат не запоминать. При запросе операндов для операции, если есть
-- запомненное число, программа запрашивает, что выбрать: запомненное ранее число или же ввести его с
-- клавиатуры? Если выбор в пользу запомненного ранее числа, использовать его.
-- Диалог выглядит следующим образом:


-- Объявление локальных переменных для математических переменных
local sum
local difference
local division
local multiplication
local big_num
local answer
local get_answer

local num1
local num2

local menu = [[

SimpleCacl v0.0.1 help:
Available operations:

+ - for sum of two numbers
- - for subtraction of two numbers
* - for multiplication of two numbers
/ - for dividing of two numbers
q - for quit

]]

::new::
print(menu)

print("Please enter operation:")

local start = io.read()


------------------------ВЫБОР СОХРАНЕННОЙ ПЕРЕМЕННОЙ-------------------------------------

if big_num ~= nil and answer == "yes" then
    print("Do you want use remembered number as first operand?")
    print("Type yes or no")

    get_answer = io.read()
    if get_answer == "yes" then
        print("Well, for first operand we use remembered number " .. big_num)
         num1 = big_num
    elseif get_answer == "no" then
    
    end
end




------------------------СЛОЖЕНИЕ-------------------------------------

if start == "+" then
    if num1 ~= nil and get_answer == "yes" then
        else
            print("Please enter first operand")
            num1 = assert(tonumber(io.read('*l')), 'Need number!')
    end
    

    print("Please enter second operand")
     num2 = assert(tonumber(io.read('*l')), 'Need number!')
    sum = num1 + num2

    print("Result is " .. sum .. " Remember it?")
    print("Type yes or no")
     answer = io.read()
    if answer == "yes" then
        print("Well, for first operand we use remembered number " .. sum)
        big_num = sum
        goto new
    elseif answer == "no" then
        goto new
    end
end


------------------------ВЫЧИТАНИЕ-------------------------------------


if start == "-"  then
    if num1 ~= nil and get_answer == "yes" then
    else
        print("Please enter first operand")
        num1 = assert(tonumber(io.read('*l')), 'Need number!')
end

    print("Please enter second operand")
     num2 = assert(tonumber(io.read('*l')), 'Need number!')
    difference = num1 - num2


    print("Result is " .. difference .. " Remember it?")
    print("Type yes or no")
     answer = io.read()
    if answer == "yes" then
        print("Well, for first operand we use remembered number " .. difference)
        big_num = difference
        goto new
    elseif answer == "no" then
        goto new
    end
end

------------------------ДЕЛЕНИЕ-------------------------------------

if start == "/" then
    if num1 ~= nil and get_answer == "yes" then
    else
        print("Please enter first operand")
        num1 = assert(tonumber(io.read('*l')), 'Need number!')
end

    print("Please enter second operand")
     num2 = assert(tonumber(io.read('*l')), 'Need number!')
    division = num1 / num2


    print("Result is " .. division .. " Remember it?")
    print("Type yes or no")
     answer = io.read()
    if answer == "yes" then
        print("Well, for first operand we use remembered number " .. division)
        big_num = division
        goto new
    elseif answer == "no" then
        goto new
    end
end



------------------------УМНОЖЕНИЕ-------------------------------------

if start == "*" then
    if num1 ~= nil and get_answer == "yes" then
    else
        print("Please enter first operand")
        num1 = assert(tonumber(io.read('*l')), 'Need number!')
end

    print("Please enter second operand")
     num2 = assert(tonumber(io.read('*l')), 'Need number!')
    multiplication = num1 * num2


    print("Result is " .. multiplication .. " Remember it?")
    print("Type yes or no")
     answer = io.read()
    if answer == "yes" then
        print("Well, for first operand we use remembered number " .. multiplication)
        big_num = multiplication
        goto new
    elseif answer == "no" then
        goto new
    end

end


if start == "q" then
    print("Goodbye!")
end


