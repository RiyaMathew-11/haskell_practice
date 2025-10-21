-- Multiple recursion : fibonnaci series
-- This returns the last element in the series
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- Fibonacci memoized

fibonacci_memoized :: Int -> Integer
fibonacci_memoized n =
    memo !! n
    
    where
        memo :: [Integer]
        memo = map fib [0..]

        fib :: Int -> Integer
        fib 0 = 0
        fib 1 = 1
        fib n = memo !! (n - 1) + memo !! (n - 2)

-- To print as list

fibonacciList :: Int -> [Integer]
fibonacciList n = take n fibs 
    where fibs = 0 : 1 : zipWith (+) fibs (tail fibs)


-- tail recursion

fibHelper :: Integer -> Integer -> Integer -> Integer
fibHelper smaller larger 0 = larger
fibHelper smaller larger steps = fibHelper larger (smaller + larger) (steps - 1)

fibonacciTailRecursion :: Integer -> Integer
fibonacciTailRecursion 0 = 0
fibonacciTailRecursion n = fibHelper 0 1 (n-1)