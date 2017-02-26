module Scrabble (scoreLetter, scoreWord) where

import qualified Data.Map as M
import Control.Monad
import Data.Char

scores :: [([Char], Int)]
scores = [("AEIOULNRST", 1),
          ("DG", 2),
          ("BCMP", 3),
          ("FHVWY", 4),
          ("K", 5),
          ("JX", 8),
          ("QZ", 10)]

scoreMap :: M.Map Char Int
scoreMap = M.fromList $ scores >>= (\(ks,v) -> [(k,v) | k <- ks])

scoreLetter :: Char -> Int
scoreLetter x = M.findWithDefault 0 (toUpper x) scoreMap

scoreWord :: String -> Int
scoreWord = sum . map scoreLetter