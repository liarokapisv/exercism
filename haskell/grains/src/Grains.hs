module Grains (square, total) where

import Data.Array

square :: Integer -> Maybe Integer
square n | 1 <= n && n <= 64 = Just $ fastExp2' (n-1)
         | otherwise = Nothing
        where fastExp2 0 = 1
              fastExp2 n | even n = fastExp2' (n `div` 2) ^ 2
                         | odd  n = 2 * fastExp2' (n `div` 2) ^ 2
              fastExp2' = (fastExp2'' !)
              fastExp2'' = listArray (0,63) $ map fastExp2 [0..]

total :: Integer
total = 18446744073709551615 

