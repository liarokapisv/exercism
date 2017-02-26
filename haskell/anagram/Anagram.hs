module Anagram (anagramsFor) where

import Control.Monad
import Data.List
import Data.Char

anagramsFor :: String -> [String] -> [String]
anagramsFor str = filter is_anagram 
            where is_anagram x | low_x == low_str = False
                               | otherwise = sort low_x == sort low_str 
                               where low_x = map toLower x
                                     low_str = map toLower str