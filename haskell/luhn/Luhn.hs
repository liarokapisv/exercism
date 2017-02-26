module Luhn (checkDigit, addends, checksum, isValid, create) where

checkDigit :: Integer -> Integer
checkDigit = (`mod` 10)

addends :: Integer -> [Integer]
addends n =  zipWith ($) (cycle funs) n'
    where n' = map (read . (:[])) . show $ n
          double n | n * 2 > 9 = n * 2 - 9
                   | otherwise = n * 2
          funs | even (length n') = [double, id]
               | otherwise = [id, double]

checksum :: Integer -> Integer
checksum n = (`mod` 10) $ sum $ addends n 
          
isValid :: Integer -> Bool
isValid n = checksum n == 0

create :: Integer -> Integer
create n = n * 10 + (remaining `mod` 10)
    where remaining = 10 - checksum (n * 10)