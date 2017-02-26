module Hexadecimal (hexToInt) where

import Data.List
import Data.Maybe

hexToInt :: String -> Int
hexToInt = foldl (\a x -> a * 16 + x) 0 . fromMaybe [] . mapM toHexValue 
  where toHexValue =  flip elemIndex "0123456789abcdef"