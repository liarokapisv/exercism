module SumOfMultiples (sumOfMultiples) where

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum multiples
       where multiples = filter factorMultiple [0..limit-1]
             factorMultiple x = any (`divs` x) factors
             a `divs` b = b `mod` a == 0

