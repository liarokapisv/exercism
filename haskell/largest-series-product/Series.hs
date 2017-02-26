module Series (digits, slices, largestProduct) where

import Data.Char (digitToInt)
import Data.List

digits :: String -> [Int]
digits = map digitToInt

slices :: Int -> String -> [[Int]]
slices n str = take (length str - n + 1) $ map (take n) $ tails $ digits str

largestProduct :: Int -> String -> Maybe Int
largestProduct n str 
    | n > length str = Nothing
    | otherwise = Just $ maximum $ map product $ slices n str