find_positives :: [Integer] -> [Integer]

-- Given a list of integers l, return a new list which contains all the positive elements of l. The elements should appear
-- in the result in the same relative order as in l. Example:
-- ghci> [2, 3, -5, 8, -2]
-- [2, 3, 8]


find_positives [] = []
find_positives (x:xs) 
    | x > 0 = x : find_positives xs
    | otherwise = find_positives xs

main = do
    print $ find_positives [2, 3, -5, 8, -2]

