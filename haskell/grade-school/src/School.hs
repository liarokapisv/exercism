module School (School, add, empty, grade, sorted) where

import qualified Data.Map as M
import Data.List

type School = M.Map Int [String]

add :: Int -> String -> School -> School
add g n = M.insertWith (flip (++)) g [n]

empty :: School
empty = M.empty

grade :: Int -> School -> [String]
grade k = M.findWithDefault [] k 

sorted :: School -> [(Int, [String])]
sorted = M.toAscList . fmap sort
