-- Создать массив из 10 элементов, заполненный числами от 1 до 10 в порядке возрастания. Программа запрашивает номер элемента массива.

-- Если введенный номер меньше 1, то программа выводит весь массив полностью.
-- Если введенный номер превышает размер массива, то программа выводит строку "OUT OF BOUND".
-- Если введенный номер корректен, то программа выводит элемент массива.
local array_index
local array = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

print("Введите номер элемента массива")
array_index = assert(tonumber(io.read('*l')), 'Need number!')

if array_index < 1 then
    for i = 1,#array do
        print(array[i])
      end
elseif array_index > 10 then
    print("OUT OF BOUND")
elseif array_index then
    for i = array_index, array_index do
        print(array[i])
      end
end