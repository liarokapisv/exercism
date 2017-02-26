module LinkedList (reverseLinkedList, nil, isNil, datum, toList, fromList, next, new) where

import qualified Data.Foldable as F

data LinkedList a = Nil | (:>) { datum :: a , next :: LinkedList a }

instance F.Foldable LinkedList where
    foldr _ a Nil = a
    foldr f a (x :> xs) = f x (F.foldr f a xs)

isNil :: LinkedList a -> Bool
isNil Nil = True
isNil _ = False

nil :: LinkedList a
nil = Nil

new :: a -> LinkedList a -> LinkedList a
new = (:>)

toList :: LinkedList a -> [a]
toList = F.foldr (:) []

fromList :: [a] -> LinkedList a 
fromList = F.foldr (:>) Nil

reverseLinkedList :: LinkedList a -> LinkedList a
reverseLinkedList = F.foldl (flip (:>)) Nil