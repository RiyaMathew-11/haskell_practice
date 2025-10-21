-- Question 3: Negate a list
-- negateAll :: [Integer] -> [Integer]
-- Given a list of integers l, define a function that returns a new list with all the elements of l with sign negated, i.e.,
-- positive integers are to become negative and negative integers positive. Example:
-- ghci> negateAll [2, -5, 8, 0]
-- [-2, 5, -8, 0]

negateAll :: Integer -> Integer
negateAll n = n * (-1)

main = do
    print $ map negateAll [2, -5, 8, 0]
    print $ map negateAll [5, -5, 2, -4]