module Sublist (Sublist(..), sublist) where

import Data.List (isInfixOf)

data Sublist = Equal | Sublist | Superlist | Unequal deriving (Eq, Show)

sublist :: Eq a => [a] -> [a] -> Sublist
sublist a b
	| a == b = Equal
	| alength < blength && a `isInfixOf` b = Sublist
	| blength < alength && b `isInfixOf` a = Superlist
	| otherwise = Unequal
	where alength = length a
	      blength = length b