-- Найти количество прямоугольных треугольников с целочисленными сторонами, меньшими 100. Треугольники с катетами (X,
-- Y) и (Y, X) считать разными.


local count = 0


for x = 0, 100 do
  for y = 1, x do
    local hypotenuse_square = x * x + y * y
    local hypotenuse = 1
    while hypotenuse * hypotenuse <= hypotenuse_square do
      if hypotenuse * hypotenuse == hypotenuse_square then
        count = count + 1
        break
      end
      hypotenuse = hypotenuse + 1
    end
  end
end

print(count)
