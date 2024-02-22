-- Проанализировать следующие программы, исправить смысловые ошибки:
--1
local a = "Variable A with this string!"
print("This print will show a content of variable a:".. a) -- without tabulation

--2
local greeting = "Hello, "
local name = 'Ivan'
print(greeting .. name .."!") -- this print should show on console the phrase "Hello, Ivan!"

--3 
print("first\nsecond", "\nthird") -- each word on a separate line