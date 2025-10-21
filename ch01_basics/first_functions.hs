module FirstFunctions where

sayTwice :: String -> String
sayTwice s = s ++ s


sign :: Int -> Int
sign n | n > 0 = 1
       | n == 0 = 0
       | n < 0 = -1

checkPalindrome :: String -> Bool
checkPalindrome s | s == reverse s = True
                  | otherwise = False


fizzbuzz :: Int -> String
fizzbuzz i | i `mod` 3 == 0 && i `mod` 5 == 0 = "fizzbuzz"
           | i `mod` 3 == 0 = "fizz"
           | i `mod` 5 == 0 = "buzz"
           | otherwise = show i

perimeter :: (Double, Double) -> Double
perimeter (a, b) = 2 * (a + b)

ifThenElse :: (Bool, Int, Int) -> Int
ifThenElse (b, t, f) = if b then t else f

isTriangle :: Double -> Double -> Double -> Bool
isTriangle x y z = x + y + z == 180

-- inRange :: (Int, Int, Int) -> Bool
-- inRange (lower, upper, query) = lower <= query && query <= upper
-- Write the curried form of inRange

inRange :: Int -> Int -> Int -> Bool
inRange lower upper query = lower <= query && query <= upper

betweenTenAndTwenty :: Int -> Bool
betweenTenAndTwenty i = inRange 10 20 i
