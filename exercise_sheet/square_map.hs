-- Consider the following datatype declaration.

data MixList = MNil | IntCons Int MixList | BoolCons Bool MixList
    deriving Show
-- (The deriving Show is just to allow you to print MixList values). Explain why the values of this type look
-- like lists that can contain both integer and boolean values. Consider the following function which squares all of the integer entries and drops all of the boolean entries. 

squareDrop :: MixList -> MixList
squareDrop MNil = MNil
squareDrop (IntCons n ms) = IntCons (n * n) (squareDrop ms)
squareDrop (BoolCons _ ms) = squareDrop ms

-- Based on this example, write a function
-- dropNot which drops all of the integer values and performs boolean ‘not’ on the boolean entries.
dropNot :: MixList -> MixList
dropNot MNil = MNil
dropNot (IntCons _ ms) = dropNot ms
dropNot (BoolCons b ms) = BoolCons (not b) (dropNot ms)

-- Rewrite squareDrop to a function mapDrop that takes an extra argument of type Int -> Int
-- and applies that to each integer entry instead of squaring. Thus you will recover 
-- squareDrop = mapDrop (\n − > n ∗ n).

mapDrop :: (Int -> Int) -> MixList -> MixList
mapDrop _ MNil = MNil
mapDrop f (IntCons n ms) = IntCons (f n) (mapDrop f ms)
mapDrop f (BoolCons _ ms) = mapDrop f ms

main = do 
    print $ squareDrop (IntCons 1 (BoolCons True MNil))
    print $ squareDrop (IntCons 3 (IntCons 4 (BoolCons True MNil)))
    print $ dropNot (IntCons 2 (IntCons 3 (BoolCons False (IntCons 4 MNil))))
    print $ mapDrop (\n -> n * 2) (IntCons 3 (IntCons 4 (BoolCons True MNil)))