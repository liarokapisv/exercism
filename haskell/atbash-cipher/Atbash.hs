module Atbash (encode) where

import Data.Char
import Control.Arrow
import Control.Monad.State
import Data.Ratio

chunks :: Int -> String -> [String]
chunks n s = evalState (replicateM (ceiling (length s % n)) (getN n)) s
    where getN n = state $ take n &&& drop n

encode :: String -> String
encode = unwords . chunks 5 . map (encodeLetter . toLower) . filter isAsciiAlphaNum
    where isAsciiAlphaNum = liftM2 (&&) isAscii isAlphaNum
          encodeLetter c | isAlpha c = chr $ ord 'a' + ord 'z' - ord c
                         | otherwise = c