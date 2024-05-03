-- Применяя функцию подсчёта суммы цифр, написать функцию, которая определяет, является ли автобусный билет несчастливым или нет. 
-- Несчастливым билет является в случае, если сумма его цифр делится на 13.



-- Функция подсчета 
local function sum_of_digits(n)
    local sum = 0
    while n > 0 do
        local digit = n % 10
        sum = sum + digit
        n = n - digit
        n = n / 10
    end
    return sum
end

-- Проверка билета    
local function is_unlucky(ticket_number)
    local sum = sum_of_digits(ticket_number)
    if sum % 13 == 0 then
        return true
    else
        return false
    end
end

print(sum_of_digits(1237))

print(is_unlucky(123456)) -- false
print(is_unlucky(1237)) -- false