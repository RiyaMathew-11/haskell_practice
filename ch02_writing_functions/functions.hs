module Functions where

-- Recursion

compoundInterest :: Int -> Double
compoundInterest 0 = 1000
compoundInterest n = 1.05 * compoundInterest (n - 1)

main = print (compoundInterest 3)

-- Implement a recursive function sayAgain :: String -> Int -> String. When calling sayAgain word times, the word should be repeated times times.

-- For example, sayAgain "hello" 3 should result in "hellohellohello"

sayAgain :: String -> Int -> String

sayAgain word n | n <= 1 = word
                | otherwise = word ++ sayAgain word (n - 1)