-- Check for positives
allPositive :: [Integer] -> Bool

-- Given a list of integers l, return a boolean value indicating whether all its elements are positive, i.e., > 0

allPositive [] = True
allPositive (x:xs) 
    | x > 0 = allPositive xs
    | otherwise = False

main = do
    print $ allPositive [2, 3, 5, 7, 10]
    print $ allPositive [-2, 5, 7, 10]