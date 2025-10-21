-- Safely searching for an element*

-- As a variant of the previous problem, define:

find :: Integer -> [Integer] -> Maybe Integer

-- which returns Nothing if the the integer does not occur in the list and returns Just n if the integer first occurs
-- in the list at position n. 
-- Examples:
-- ghci> find 3 [7, 5, 3, 8]
-- Just 2

find x list = find_pos x list 0 where 
    find_pos _ [] _ = Nothing
    find_pos x (y:ys) pos
        | x == y = Just pos
        | otherwise = find_pos x ys (pos+1)

main = do
    print $ find 2 [3, 2, 5, 6, 21]
    print $ find 31 [32, 21, 4, 9, -3, 8]