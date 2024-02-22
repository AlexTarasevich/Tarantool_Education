--Проанализировать следующие программы и исправить синтаксические ошибки, если они в них
--есть:

--1  
local a = "Hello world!" print(a) -- нужно добавить ковычки

--2
print('it is a\nmultiline\nstring') -- аналогично, нужно добавить кавычки 

--3
print('it', 'is', 'a', 'multiline', 'string') -- добавить кавычки

--4
print("Hello", "world!") -- все верно 

--5
print('Hello, my dear freind!') -- использовать либо одинарные, либо двойные кавычки

--6 
local ml = "[[ this is a good program, I tell you ]]" .. "but it's quite complex"
print(ml)

--7
print([[this is a start of multiline string
It's not a hard to fix it :)
Just don't forget about symbols like " and '  ]])

--8
local first = "First"
local second = "Second"
print(first .. " and " .. second)

--9
print("unifinished string")
print("The end!")

--10
print("yet another incorrect string!")
local greeting = "Hello, bro!\nHow are you?"
print(greeting)

--11
--local text = [[An example of multiline string is a [[real\nmultiline string]]]] ПЕРЕПРОВЕРИТЬ

--print(text)