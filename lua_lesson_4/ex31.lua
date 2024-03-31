-- Программа запрашивает десятичное число N и основание системы счисления, 
-- в которую надо перевести число N.

print("Введите десятичное число N")
local decimal =  assert(tonumber(io.read('*l')), 'Need number!')

print("Введите основание системы счисления")
local base =  assert(tonumber(io.read('*l')), 'Need number!')

local converted = ""

while decimal > 0 do
  local remainder = decimal % base
  decimal = decimal / base

  if remainder >= 10 then
    if remainder == 10 then
      converted = "A" .. converted
    elseif remainder == 11 then
      converted = "B" .. converted
    elseif remainder == 12 then
      converted = "C" .. converted
    elseif remainder == 13 then
      converted = "D" .. converted
    elseif remainder == 14 then
      converted = "E" .. converted
    else
      converted = "F" .. converted
    end
  else

    converted = tostring(remainder) .. converted
  end
end

print("Итоговое число:  " .. converted)
