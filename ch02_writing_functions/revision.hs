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

