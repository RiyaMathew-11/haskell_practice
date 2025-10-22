-- Practice for recursive fucntions 

module Revision where

-- Summing a List of Numbers

sumList :: [Int] -> Int

sumList [] = 0
sumList (x:xs) = x + sumList xs

-- Counting list of numbers

countElements :: [a] -> Int
countElements [] = 0
countElements (x:xs) = 1 + countElements xs

-- Checking for Element Membership

isMember :: Eq a => a -> [a] -> Bool

isMember _ [] = False
isMember target (x:xs) | target == x = True
                       | otherwise = isMember target xs

-- Mapping a Function to List Elements (Reinventing map)

square :: Int -> Int
square x = x * x

myMap :: (a -> b) -> [a] -> [b]

myMap _ [] = []
myMap func (x:xs) = func x : myMap func xs

-- We want to count the number of distinct bit sequences with n0 zeroes and n1 ones. Write a recursive function sequenceCount n0 n1 for that purpose.

-- For example, sequenceCount 2 2 should return 6, as these sequences exist 0011, 0101, 0110, 1001, 1010, 1100.

sequenceCount :: Integer -> Integer -> Integer
sequenceCount num1 0 = 1
sequenceCount 0 num2 = 1
sequenceCount num1 num2 = sequenceCount (num1 - 1) num2 + sequenceCount num1 (num2 - 1)


