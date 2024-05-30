# Дополнить программу для проверки габаритов ручной клади на корректность введенных габаритов: не должно быть отрицательгных числе и не должно быть слишком больших.


validator_length = 56
validator_width = 45
validator_height = 25

print("Введите значение валидатора:")
validator_length_input = int(input("Enter the validator length: "))
validator_width_input = int(input("Enter the validator width: "))
validator_height_input = int(input("Enter the validator height: "))


if validator_length_input < 0 or validator_width_input < 0 or validator_height_input < 0:
    print("NO")
else:
    print("Введите значения багажа:")
    length = int(input("Enter the length of the hand luggage: "))
    width = int(input("Enter the width of the hand luggage: "))
    height = int(input("Enter the height of the hand luggage: "))

    
    if length <= validator_length_input and width <= validator_width_input and height <= validator_height_input:
        print("YES")
    else:
        print("NO")