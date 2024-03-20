-- Реализовать игру "Камни". Правила следующие: играют двое, есть N камней. Один игрок за один ход может взять 1, 2 или 3
-- камня. Проигрывает тот, кто последним взял все камни. Реализовать программу для игры с компьютером.
-- Программа запрашивает количество камней, затем случайным образом выбирает, кто первый ходит (человек или
-- компьютер) и дальше запрашивает ходы у человека и выводит ходы компьютера. Компьютер играет без заранее
-- определенной стратегии, просто случайно выбирает числа. Но если есть возможность последним ходом достичь выигрыша -
-- компьютер должен эту возможность использовать.
-- Для генерации случайных чисел использовать функцию math.random(<begin>, <end>).



math.randomseed(os.time())

print("Введите колличество камней:")
local stones = tonumber(io.read())

local first_player = math.random(1, 2)

while stones > 0 do
  if first_player == 1 then
    print("Выберите сколько камней вы возьмете (1-3):")
    local stones_taken = tonumber(io.read())

    if stones_taken < 1 or stones_taken > 3 then
      print("Не верное количество камней.")
      os.exit()
    end

    stones = stones - stones_taken

    if stones == 0 then
      print("Игрок проиграл!")
      os.exit()
    end

    first_player = 2
  else

    if stones <= 3 then
      print("Компьютер берет " .. stones .. " камней.")
      stones = 0
    else
      local stones_taken = math.random(1, 3)
      print("Компьютер берет " .. stones_taken .. " камней.")
      stones = stones - stones_taken
    end

    if stones == 0 then
      print("Компьютер проиграл!")
      os.exit()
    end

    first_player = 1
  end
end
