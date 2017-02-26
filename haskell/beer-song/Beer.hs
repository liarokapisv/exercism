module Beer (verse, sing) where

import Data.Char (toUpper)
import Text.Printf (printf)

verse :: Int -> String
verse n = printf (firstPart ++ secondPart n) (capitalize (bottles curn)) (bottles curn) (bottles nextn)
    where curn = n `mod` 100
          nextn = ((n-1) `mod` 100)

firstPart :: String
firstPart = "%s of beer on the wall, %s of beer.\n"

bottles :: Int -> String
bottles 0 = "no more bottles"
bottles 1 = "1 bottle"
bottles n = show n ++ " bottles"

secondPart :: Int -> String
secondPart n = firstHalf n ++ "%s of beer on the wall.\n"
         where firstHalf 0 = "Go to the store and buy some more, "
               firstHalf 1 = "Take it down and pass it around, "
               firstHalf _ = "Take one down and pass it around, "

capitalize :: String -> String
capitalize "" = ""
capitalize (x:xs) = toUpper x : xs

sing a b = concatMap ((++"\n").verse.(a+b-)) [b..a]