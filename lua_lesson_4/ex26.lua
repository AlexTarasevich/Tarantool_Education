-- Реализовать игру "Камни". Правила следующие: играют двое, есть N камней. Один игрок за один ход может взять 1, 2 или 3
-- камня. Проигрывает тот, кто последним взял все камни. Реализовать программу для игры вдвоём.
-- Программа запрашивает количество камней, затем поочередно спрашивает игроков, кто сколько камней берёт и в конце
-- игры выводит результат, кто выиграл.




print("Введите колличество камней:")
local stones = tonumber(io.read())


while stones > 0 do

  print("Игрок 1, введите колличество камней (1-3):")
  local stones_taken = tonumber(io.read())

  if stones_taken < 1 or stones_taken > 3 then
    print("Неверное число камней введено")
    os.exit()
  end

  stones = stones - stones_taken

  if stones == 0 then
    print("Игрок 1 проиграл!")
    os.exit()
  end

  print("Игрок 2, введите колличество камней (1-3):")
  stones_taken = tonumber(io.read())

  if stones_taken < 1 or stones_taken > 3 then
    print("Веверное число камней введено")
    os.exit()
  end

 
  stones = stones - stones_taken

 
  if stones == 0 then
    print("Игрок 2 проиграл!")
    os.exit()
  end
end
