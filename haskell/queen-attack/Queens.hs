module Queens (boardString, canAttack) where

import Data.List.Split (chunksOf)
import Data.List

boardString :: Maybe (Int, Int) -> Maybe (Int, Int) -> String
boardString a b = unlines (map row [0..7])
    where row x = intersperse ' ' (map (cell x) [0..7])
          cell x y
            | Just (x, y) == a = 'W'
            | Just (x, y) == b = 'B'
            | otherwise = '_'

canAttack :: (Int, Int) -> (Int, Int) -> Bool
canAttack (x1, y1) (x2, y2) = x1 == x2
                           || y1 == y2
                           || abs (x1 - x2) == abs (y1 - y2)