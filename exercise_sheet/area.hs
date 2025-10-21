-- Consider the following datatype declaration.

-- data Shape = Circle Double | Rectangle Double Double
-- Interpret a Circle as storing its radius and a Rectangle as storing its height and width. Use pattern-matching
-- to write a function
-- area :: Shape -> Double
-- which computes the area of a Shape. You should be able to use your function like this:
-- ghci> area (Circle 1)
-- 3.141592653589793
-- ghci> area (Rectangle 2 3)
-- 6.0

-- [Hint: you can use pi in Haskell without importing anything.

round2Dp :: Double -> Double
round2Dp x = fromIntegral (round $ x * 100) / 100

data Shape = Circle Double | Rectangle Double Double
area :: Shape -> Double

area (Circle r) = pi * r * r
area (Rectangle h w) = h * w

main = do
    putStrLn $ show $ round2Dp (area (Circle 1))
    putStrLn $ show $ round2Dp (area (Rectangle 2 3))


-- ghci scripting

-- :{
--  round2Dp :: Double -> Double
--  round2Dp x = fromIntegral (round $ x * 100) / 100
-- 
--  data Shape = Circle Double | Rectangle Double Double
--  area :: Shape -> Double
-- 
--  area (Circle r) = round2Dp $ pi * r * 2
--  area (Rectangle h w) = round2Dp $ h * w
--  :}
