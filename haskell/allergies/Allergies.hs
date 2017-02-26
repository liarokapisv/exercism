module Allergies (Allergen(..), allergies, isAllergicTo) where

import Data.Bits

data Allergen = Eggs      | Peanuts      | 
                Shellfish | Strawberries | 
                Tomatoes  | Chocolate    | 
                Pollen    | Cats
                deriving (Eq, Show, Enum, Bounded)

isAllergicTo :: Allergen -> Int -> Bool
isAllergicTo = flip testBit . fromEnum

allergies :: Int -> [Allergen]
allergies n = filter (`isAllergicTo` n) [minBound..]