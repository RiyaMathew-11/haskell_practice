-- Consider the function g defined by the following Haskell expression.
g m = let f xs ys = case xs of { [] -> ys; (x:xs) -> f xs (x:ys) } in f m []
-- Work out what this function does (try running it if you get stuck). 
-- Rewrite it to use top-level definitions and pattern-matching. (No let’s or case’s).

reverse_list :: [Integer] -> [Integer]
reverse_list [] = []
reverse_list (x:xs) = reverse_list xs ++ [x]
main = do 
    print $ reverse_list [1, 4, 6, 7]

