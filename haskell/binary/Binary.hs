module Binary (toDecimal) where

import Data.Char

toDecimal :: String -> Int
toDecimal bin
    | any (`notElem` "01") bin = 0
    | otherwise = foldl (\a x -> digitToInt x + 2 * a) 0 bin