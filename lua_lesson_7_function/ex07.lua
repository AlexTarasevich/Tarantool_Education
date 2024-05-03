-- Написать функцию, которая в качестве аргумента принимает число K, 
-- и определяет, есть ли такое число N, при котором 1 + 2 + 3 ... + N = K, 
-- и если такое число есть, то возвращает его, в противном случае возвращает nil.

function find_sum(K)
    local N = 0
    local sum = 0
    while sum < K do
        N = N + 1
        sum = sum + N
        if sum == K then
            return N
        end
    end
    return "nil"
end

print("Число N это: " .. find_sum(15))


-- при 15 вернет 5, а при 20 nil