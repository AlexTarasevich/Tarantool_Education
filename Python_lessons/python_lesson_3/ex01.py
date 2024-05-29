# Проверка габаритов ручной клади в аэропорту. 
# Программа запрашивает параметры валидатора (длина, ширина, высота), затем запрашивает габариты ручной клади (длина, ширина, высота). 
# Выдаёт ответ "YES" если габариты подходят и ответ "NO" если габариты не подходят под параметры валидатора.


print("Введите значение валидатора:")
validator_length = int(input("Length: "))
validator_width = int(input("Width: "))
validator_height = int(input("Height: "))


print("Введите значения багажа:")
hand_luggage_length = int(input("Length: "))
hand_luggage_width = int(input("Width: "))
hand_luggage_height = int(input("Height: "))


if (hand_luggage_length <= validator_length and
    hand_luggage_width <= validator_width and
    hand_luggage_height <= validator_height):
    print("YES")
else:
    print("NO")