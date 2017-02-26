module Triangle (TriangleType(..), triangleType) where

import Data.List

data TriangleType = Equilateral
                  | Isosceles
                  | Scalene
                  | Illogical
                  deriving (Eq, Enum, Show)

triangleType :: Int -> Int -> Int -> TriangleType
triangleType a b c 
    | any (<=0) [a, b, c] || s1 + s2 <= s3 = Illogical
    | otherwise = toEnum uniqueSides
    where [s1, s2, s3] = sort [a, b, c]
          uniqueSides = pred . length $ nub [a, b, c]