is_sorted :: [Integer] -> Bool
is_sorted [] = True
is_sorted [_] = True
is_sorted (x:y:xs) = x <= y && is_sorted (y:xs)

main = do
    print $ is_sorted [1, 2, 3, 4, 5]
    print $ is_sorted [1, 5, 3, 21, 7]