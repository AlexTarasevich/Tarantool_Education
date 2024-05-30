# Переписать программу с использования goto на использование цикла
# с циклом while
# c циклом repeat ... until
# c циклом for

# local i = 0
# ::loop::
# if i > 100 then
#     goto finish
# end
# print(i)
# i = i + 1
# goto loop
# ::finish::

# for
for i in range(101):
    print(i)
    
    
    

i = 0
while True:
    print(i)
    i += 1
    if i > 100:
        break
    
    
    
# while
i = 0
while i <= 100:
    print(i)
    i += 1