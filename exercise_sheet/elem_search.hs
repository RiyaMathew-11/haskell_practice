-- Reimplement the built-in function elem. That is, define a function

myElem :: Integer -> [Integer] -> Bool
-- which, given an integer x and a list l, checks whether x occurs in l. Examples:
-- ghci> myElem 3 [7, 5, 3, 8]
-- True
-- ghci> myElem 7 [7, 5, 3, 8]
-- True
-- ghci> myElem 6 [7, 5, 3, 8]
-- False

myElem x [] = False
myElem x (y:ys) = x == y || myElem x ys

main = do
    print $ myElem 5 [2, 3, 5, 7]
    print $ myElem 11 [3, 8, 12, 13]
